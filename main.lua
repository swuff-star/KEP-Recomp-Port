local function loadContent(mod, path)
    local source, readErr = mod:read(path)

    if not source then
        error(
            ("KEP Port: couldnt read %s: %s")
                :format(path, tostring(readErr)),
            0
        )
    end

    local chunk, loadErr = loadstring(source, path)

    if not chunk then
        error(
            ("KEP Port: syntax error in %s: %s")
                :format(path, tostring(loadErr)),
            0
        )
    end

    local register = chunk()

    if type(register) ~= "function" then
        error(
            ("KEP Port: %s must return function(mod)")
                :format(path),
            0
        )
    end

    register(mod)
end


return function(mod)
    loadContent(mod, "content/items.lua")

    loadContent(mod, "content/types.lua")
    loadContent(mod, "content/moves.lua")

    loadContent(mod, "content/pokemon/generated/init.lua")
    loadContent(mod, "content/encounters/generated/init.lua")
    loadContent(mod, "content/trainers/generated/init.lua")
    loadContent(mod, "content/moves/generated/presentation.lua")
end
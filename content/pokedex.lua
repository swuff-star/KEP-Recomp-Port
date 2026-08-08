return function(mod)
    local KEP_DEX_SIZE = 251

    local currentDexSize =
        mod.content.constants:get("dexSize") or 151

    if currentDexSize < 153 then
        mod.content.constants:patch("dexSize", 153)
    end
end
# KEP Port Overview
an unofficial port of "Kanto Expansion Pak"!!! made with permission of the KEP developers (thanks everyone 🫶) i do not know how "complete" this ever truly will be, and it may deviate from the source in ways where it makes sense to take advantage of the recomps' features (e.g. including the expanded baby dex, cutting specific fixes in favor of letting users pick their own from other mods), but the overall intent is to port the gameplay and story of KEP as 1:1 as possible.

## WHAT'S DONE SO FAR
✅ new pokemon data ported (bsts, movepools, sprites, cries, palettes, dex data ... all of it yippee)

✅ old pokemon data ported (the above but for vanilla's dex; mostly just level up move adds or evos)

✅ dex display updated to 251 + KEP ordering

✅ types ported (fairy, steel, dark)

✅ moves ported (all new fairy/steel/dark attacks, including anims/sounds for them)

✅ wild encounter data ported

✅ trainer team data ported

## TO DO
❌ new NPCs (this is so fucking broad- new npc trainers on routes, new talkable npcs in towns, new in-game traders...)

❌ update old NPCs

❌ new maps

❌ new events

❌ item placement/obtainability (likely falls into porting NPCs and events rather than its own task?)

❌ new music

❌ there will be more

## STRETCH
❌ babydex expansion

❌ compat with other pokemon-adding mods (e.g. https://github.com/1Jamie/Kanto-Reforged), but only if there isn't better official support for this by then

# KEP Port Credits
i PORTED this and made the tools to transfer data from PRET to gen1recomp.. read about everyone who originally MADE it down below!! it should go without saying that this port is not possible without either the work of the original KEP dev team or the gen1recomp wizards

# Kanto Expansion Pak Credits
https://github.com/ShiraTheMogul/kep-hack/tree/master

* Plague von Karma - Creator of the Showdown Mod, Director, Developer, Scenarios, Balancing, Dialogue, Pokedex entries, Maps (Mt. Moon Crater, Galarian Bird dungeons, Rock Tunnel, Cinnabar Volcano floors, enhanced Diglett's Cave, Shinjuku Jacky's room, and more), Event scripting, Hyper Training, FRLG Tea, post-game rematches, male/female character selection, Meltan implementation, Yellow backports, and occasional spriter (assisting with Bellignan, Carapthor)
* Martha's Against Humanity - Developer, Pokémon implementation, Pokedex entries, event scripting, tweaks of Albatross's sprites, Sylveon, Bellignan, Galarian Slowking, Galarian Slowbro and Mimmeo sprites, Maps (Citrine City, Cinnabar Volcano, Underwater Tunnel, Silph Gauntlet,), Giovanni's battle theme, SGB border, new palettes for postgame areas and Game Corner, etc.
* Ema Skye - Developer, Maps (Silph Co. and Pokemon Tower shortening), Mt. Moon Crater Guard, Showdown Mod assistance.
* BlueZangoose / Vimescarrot - Pokemon box expansion, Instatext option, general assistance.
* Albatross - Many of the new sprites used in the hack (A significant number of post-Gen 1 evolutions, all regional variants, Meltan and Carapthor lines, etc.)
* LuciShrimp - Mewtwo & FireRed/LeafGreen Legendary custom battle music; Area Zero map theme for Mt. Moon Crater, Team Rocket theme changes and Giovanni's battle theme.
* jojobear13 & Mateo - DV/StatExp display, move deleter, & move relearner functionality from Shin Pokered, followed [this guide](https://github.com/jojobear13/shinpokered/blob/master/how%20to%20guides/how%20to%20add%20the%20move%20relearner%26deleter.txt). Tweaks were made to make it compatible with the pokered version we worked off of. Thanks specifically to Mateo's Red++ for the ferry system! Jojobear also provided bug fixes!
* thornAvery - Various bug fixes, notably to text speed errors, as well as making the Battle Tent a lot more functional.
* LadyMisticus - Bug fixes and minor adjustments, and made a well-documented spreadsheet for the hack that details every Pokemon's stats, movepools and locations, plus more!
* pret et al - Pokémon Red and Blue Disassembly Project, many tutorials helped us!
* ausma - Showdown Mod assistance
* Paulluxx - Showdown Mod assistance
* DuoM2 - Showdown Mod assistance
* dannye33 - Assisting with crysaudio implementation.
* Frrf - Assisting with the development of the Pikachu / Eevee Mode + 5 Starters scenes in Oak's Lab, debugging.
* erosunica - Assistance with developing Celadon University & Citrine City, plus sources for various subjects.
* Chatot4444 - Assisting with gym scaling code.
* Enigami - Reworking the Battle Tent's RestoreTeam code to make it work properly. 
* HunnieBuns (originally HeadBoiSkye) - Helped with writing NPC dialogue and Pokédex entries for new Pokémon such as Orfry.
* ZumiIsawhat? - Restorations of prototype OST.
* FrenchOrange - Reconstructions of various overworld prototype sprites.
* Helix Chamber (RacieBeep & Orchid) - Prototype Pokémon sprites. Precise credits are available [here](https://cdn.discordapp.com/attachments/1014321591657709569/1015347305483878521/unknown.png) and below.
* Vortiene/Vortyne - Reused a bit of code from their pureRGB hack, including their Trainer AI, move animations and Pokedex stats page. Assisted in bug fixes. Used their sprite sheet generator.
* wrulfy - Reused a bit of code from their Carmine Red hack to improve a handful of move animations, most notably Drill Peck and Horn Drill. Technical advice.
* TheSmithPlays -  Reused a bit of code from their Yellow Legacy hack.
* Pigu-A, RevoSucks, walle303 - Contributors to Pokemon Anniversary Red's repository, where we reused the Green/FemC sprites and the Battle Tent.
* Madame Frog / Hatun - [FemC Green sprite used in Pokemon Anniversary Red](https://www.deviantart.com/ghost-missingno/art/Blue-Sprites-for-R-G-B-Y-339796166).
* Rangi - Reused a bit of code from their Red* / Blue* hack to make HMs usable in the overworld, and generally being an amazing individual.
* BGVC - Composed the original 4-channel version of the unused Koukan (trading) music.
* Rainbow Metal Pigeon - Bug fix relating to Gym Leader rematches.
* SoupPotato - Borrowed code to make a functioning EXP bar.
* SatoMew - Technical advice.
* suloku - Technical advice regarding setting where you spawn after beating the Elite Four, Exp. All modernisation code
* 大吟醸 (Daiginjo) - Assistance in translating the Tamamushi University Student Book, allowing for an accurate adaptation of the location.
* Molk - Balancing of some prototype Pokemon, most notably Ramoose.
* Shellnuts - Balancing of some prototype Pokemon, especially Omegadge. Made the SW97 type chart suggestion to balance Galarian Moltres; this would go on to define the mod's identity.
* ViWalls - Extremely early adopter of the hack who reported numerous bugs and gave many useful suggestions as a prime member of our target audience.
* Dr. Lava - Translations of some content used in this hack, particularly the 1996 Pokedex book's entries for DYKG.
* Nob Ogasawara - Prototype Pokemon names, produced for DYKG.

Albatross sprites: Articuno-G, Blissey, Dugtrio-A, Electivire, Electrode-H, Espeon (back), Exeggutor-A, Gentlarva, Glaceon, Golem-A, Hitmontop, Iguanarch, Kleavor, Leafeon, Lickilicky, Marowak-A, Melmetal, Meltan, Moltres-G, Mr. Rime, Muk-A, Ninetales-A, Perrserker, Persian-A, Politoed, Porygon-Z, Pupal, Raichu-A, Rapidash-G, Raticate-A, Rhyperior, Sandslash-A, Sandy Shocks, Scizor, Sirfetch’d, Slowbro-G, Slowking (back), Slowking-G (back), Sylveon (back), Tangrowth, Tauros-P (all forms), Toedscool, Toedscruel, Umbreon (back), Weezing-G, Wiglett, Zapdos-G

Martha’s Against Humanity sprites: Bellignan (front, with help from PvK), Mimmeo (front), Slowking-G (front), Slowbro-G (front, with help from Albatross), Sylveon (front, with help from Albatross)

Albatross sprites refined by either Martha’s Against Humanity or PvK: Annihilape, Arcanine-H, Bellossom, Carapthor, Gorillaimo, Kingdra, Magmortar, Magnezone, Ministare, Porygon2, Scream Tail, Squeamata, Tauros-P (all forms), Wugtrio

RacieBeep sprites: Balumba, Blastyke, Blottle, Buu, Cactormus, Cheep, Coinpur, Croakozuna, Decilla, Fossils, Gaotora, Gavillain (edited by Albatross), Gawarhed (Current release), Gorochu (edited by Martha’s Against Humanity), Gorotora, Guardia, Jabetta (edited by Martha’s Against Humanity), Kolta, Kotora, Luxwan, Nidoreign, Omegadge (front/back), Orfry, Pendraken, Ramoose, Ribbito, Sharpoon, Totartle, Trampel, Vulpiii, Weirduck, Fossil Aerodactyl, Fossil Kabutops, Ghost, Articuno (back), Meowth (back)

Loumilouminosus: Gawarhed (In-repo version, edited by Zeta_Null)

Orchid: Luxwan (back), Buu (back)

Zeta_Null: Porygon (front), All sprites for Pink (Nonbinary player option)

Official sprites: Crobat (front, edited by Martha’s Against Humanity), Disturban, Espeon (front, edited by Martha’s Against Humanity), Slowking (front), Steelix (front), Tricules, Umbreon (front, edited by Martha’s Against Humanity)


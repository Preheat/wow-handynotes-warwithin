local myname, ns = ...

--[[
Notes:
]]

-- Treasures

ns.RegisterPoints(ns.AZJKAHET, {
    [78623320] = { -- Weaving Supplies
        criteria=69643,
        quest=82527,
        loot={{225347, toy=true}}, -- Web-Vandal's Spinning Wheel
        level=74,
        vignette=6289,
        note="Collect {item:223901:Violet Silk Scrap}, {item:223902:Crimson Silk Scrap}, {item:223903:Gold Silk Scrap} from the edges of the nearby platform to unlock",
    },
    [49564370] = { -- Nest Egg
        criteria=69645,
        quest=82529,
        loot={{221760, pet=4513}}, -- Bonedrinker
        level=74,
        vignette=6291,
        note="Webbed to the ceiling",
    },
    [67449072] = { -- Disturbed Soil
        criteria=69646,
        quest=82718,
        loot={}, -- grays and commendations
        vignette=6280,
    },
    [38783722] = { -- Missing Scout's Pack
        criteria=69650,
        quest=82722,
        loot={}, -- grays and commendations
        vignette=6283,
    },
    [54525081] = { -- Niffen Stash
        -- didn't appear until after I hit 73? Could just be a despawn-when-looted though...
        criteria=69649,
        quest=82721,
        loot={
            204730, -- Grub Grub
            204790, -- Strong Sniffin' Soup for Niffen
            204838, -- Discarded Toy
            204842, -- Red Sparklepretty
            213261, -- Niffen Smell Pouch
        },
        vignette=6282,
        note="Hanging under the bridge",
    },
    [67492754] = { -- Silk-spun Supplies
        -- Wasn't around for ages; despawn-when-looted?
        criteria=69647,
        quest=82719,
        loot={
            224828, -- Weavercloth
            224441, -- Weavercloth Bandage
        },
    },
}, {
    achievement=40828,
    levels=true,
})
ns.RegisterPoints(2256, { -- Azj-Kahet Lower
    -- [] = {criteria=69615, quest=82724}, -- Corrupted Memory
    [62688866] = { -- Memory Cache (confirm lower)
        criteria=69615,
        quest=82724,
        loot={{225544, pet=4599}}, -- Mind Slurp
        note="Get {spell:420847:Unseeming Shift} from a nearby Extractor Storage, then kill a {npc:223908:Corrupted Memory} for a {item:223870:Cache Key}",
    },
}, {
    achievement=40828,
    levels=true,
})
ns.RegisterPoints(ns.CITYOFTHREADS, {
    [67397441] = { -- Trapped Trove
        criteria=69644,
        quest=82528,
        loot={{222966, pet=4473}}, -- Spinner
        level=74,
        vignette=6290,
        note="Navigate through the web traps",
    },
    [31642077] = { -- Nerubian Offerings
        criteria=69648,
        quest=82720,
        loot={}, -- Some grays and commendations for Weaver, General, Vizier
        vignette=6281,
        note="In a nook beneath the platform",
    },
}, {
    achievement=40828,
    parent=true, levels=true, translate={[2256]=true},
})

ns.RegisterPoints(ns.AZJKAHET, {
    [34076105] = {
        label="Concealed Contraband",
        quest=82525,
        loot={},
        level=74,
        path={33846068, 33796026, 34015980, 34365949, 35555918},
    },
})

-- Itsy Bitsy Spider
ns.RegisterPoints(ns.AZJKAHET, {
    -- [] = {criteria=68972,}, -- Webster (227217)
    [55654395] = {criteria=68973,}, -- Spindle (216213) (this coord isn't giving me completion...)
    -- [] = {criteria=68974,}, -- Swift (226133 or 220666)
    -- [] = {criteria=68976,}, -- Ru'murh (...14 different npc ids)
    -- [] = {criteria=68977,}, -- Thimble (220568)
    -- [] = {criteria=68978,}, -- Scampering Weave-Rat (217468)
    -- [] = {criteria=68979,}, -- General's Scouting Shadecaster (220665)
}, {
    achievement=40624,
    atlas="WildBattlePet", color={r=0.75, g=1, b=0},
    minimap=true,
    levels=true,
    note=EMOTE102_CMD1,
})

-- Smelling History
local SMELL = {
    achievement=40542,
    texture=ns.atlas_texture("profession", {r=0, g=1, b=1}),
    minimap=true,
    levels=true,
    active=ns.conditions.AuraActive(456122), -- Polymorphic Translation: Nerubian
    note="Drink {item:225784:Potion of Polymorphic Translation Nerubian} first",
}
ns.RegisterPoints(ns.AZJKAHET, {
    [62973119] = {criteria=68971,}, -- Ethos of War, Part 1
    [66693128] = {criteria=68980,}, -- Ethos of War, Part 2
    [48862399] = {criteria=68981, note="Inside the building"}, -- Ethos of War, Part 3
    [43252557] = {criteria=68982, note="Inside the building"}, -- Ethos of War, Part 4
}, SMELL)
ns.RegisterPoints(ns.CITYOFTHREADS, {
    [27695460] = {criteria=68818, note="Inside the building"}, -- Strands of Memory
    [38263554] = {criteria=68984, note="Inside Skein of the Dynasty"}, -- Queen Xekatha
    [37113274] = {criteria=68985, note="Inside Skein of the Dynasty"}, -- Queen Anub'izek
    [38413225] = {criteria=68986, note="Inside Skein of the Dynasty"}, -- Queen Zaltra
    [38193902] = {criteria=68987, note="Inside the House of Scrolls, hidden behind the counter"}, -- Treatise on Forms: Sages
    [38553772] = {criteria=68988, note="Inside the House of Scrolls"}, -- Treatise on Forms: Skitterlings
    [23645109] = {criteria=69446, note="Inside the building, enter on the upper level", path=25925136}, -- Treatise on Forms: Lords
    [77984104] = {criteria=69447, note="Inside the building"}, -- Treatise on Forms: Ascended
}, SMELL)

-- Bookworm
ns.RegisterPoints(ns.AZJKAHET, {
    [40103980] = {criteria=68983,}, -- Entomological Essay on Grubs, Volume 1
    [39794050] = {criteria=68989,}, -- Entomological Essay on Grubs, Volume 2
    [39104259] = {criteria=68990,}, -- Entomological Essay on Grubs, Volume 3
}, {
    achievement=40629,
    texture=ns.atlas_texture("profession", {r=1, g=0, b=1}),
    minimap=true,
    levels=true,
    active=ns.conditions.AuraActive(456122), -- Polymorphic Translation: Nerubian
    note="Drink {item:225784:Potion of Polymorphic Translation Nerubian} first",
})

-- Rares

ns.RegisterPoints(ns.AZJKAHET, {
    [65201896] = { -- Kaheti Silk Hauler
        -- [62404140, 68205360]
        criteria=69659,
        quest=81702,
        npc=221327,
        loot={
            221206, -- Reinforced Chitin Chestpiece
            221240, -- Nerubian Stagshell Gouger
            221252, -- Nerubian Slayer's Claymore
            221263, -- Nerubian Venom-Tipped Dart
        },
        vignette=6134,
        route={65201896, 65142033, 63122532, 62492877, 61882919},
        note="Slowly wanders back and forth",
    },
    [76585780] = { -- XT-Minecrusher 8700
        criteria=69660,
        quest=81703,
        npc=216034,
        loot={
            221231, -- Steam-Powered Wristwatch
            221232, -- Polished Goblin Bling
        },
        vignette=6131,
    },
    [47204320] = { -- Abyssal Devourer
        -- [47204320, 47204380]
        criteria=69651,
        quest=81695,
        npc=216031,
        loot={
            223389, -- Legplates of Dark Hunger
            223390, -- Leggings of Dark Hunger
            223391, -- Legguards of Dark Hunger
            223392, -- Trousers of Dark Hunger
        },
        vignette=6129,
    },
    [68876480] = { -- Maddened Siegebomber
        criteria=69663,
        quest=81706,
        npc=216044,
        loot={
            221217, -- Nerubian Bomber's Leggings
            221240, -- Nerubian Stagshell Gouger
            221252, -- Nerubian Slayer's Claymore
            221263, -- Nerubian Venom-Tipped Dart
        },
        vignette=6138,
        route={
            68876480, 69006715, 67206730, 65596605, 63576530, 61636444, 61006640,
            62106844, 64256750, 65356414, 66936243,
            loop=true,
        },
        note="Patrols around the area, fighting other mobs",
    },
    [34574106] = { -- Vilewing
        -- [36004480, 36204400, 36404580, 36604660, 36804320, 36804580, 37004540]
        criteria=69656,
        quest=81700,
        npc=216037,
        loot={
            223386, -- Vilewing Crown
            223387, -- Vilewing Chain Helm
            223388, -- Vilewing Cap
            223405, -- Vilewing Visor
        },
        vignette=6132,
    },
    [61242731] = { -- Webspeaker Grik'ik
        criteria=69655,
        quest=81699,
        npc=216041,
        loot={
            223369, -- Webspeaker's Spiritual Cloak
        },
        vignette=6135,
    },
    [70732146] = { -- Cha'tak
        criteria=69661,
        quest=81704,
        npc=216042,
        loot={
            221212, -- Death Burrower Handguards
        },
        vignette=6136,
        note="Cave behind the waterfall",
    },
    [58056233] = { -- Enduring Gutterface
        criteria=69664,
        quest=81707,
        npc=216045,
        loot={
            221233, -- Deephunter's Bloody Hook
            221234, -- Tidal Pendant
            221243, -- Slippers of Delirium
        },
        vignette=6139,
    },
    [69996920] = { -- Monstrous Lasharoth
        criteria=69662,
        quest=81705,
        npc=216043,
        loot={
            221227, -- Monstrous Fungal Cord
            221250, -- Creeping Lasher Machete
            221253, -- Cultivator's Plant Puncher
            221264, -- Fungarian Mystic's Cluster
            223005, -- String of Fungal Fruits
        },
        vignette=6137,
    },
    [44803980] = { -- Khak'ik
        criteria=69653,
        quest=81694,
        npc=216032,
        loot={
            223378, -- Footguards of the Nerubian Twins
            223406, -- Slippers of the Nerubian Twins
            223407, -- Sabatons of the Nerubian Twins
            223408, -- Treads of the Nerubian Twins
        },
        vignette=6130,
        note="Patrols with {npc:221032:Rhak'ik}",
    },
    --[[ -- with Khak'ik:
    [43763953] = { -- Rhak'ik
        -- [44803880, 44803980, 45204440]
        criteria=69653,
        quest=81694,
        npc=221032,
        vignette=6130, -- Stronghold Scouts
        note="Patrols with {npc:216032:Khak'ik}",
    },
    --]]
    [37944285] = { -- Ahg'zagall
        criteria=69654,
        quest=78905,
        npc=214151,
        loot={
            223375, -- Clattering Chitin Necklace
        },
        vignette=5973,
    },
    [64600352] = { -- Umbraclaw Matra
        criteria=69668,
        quest=82037,
        npc=216051,
        loot={
            221240, -- Nerubian Stagshell Gouger
            223930, -- Monstrous Chain Pincers
        },
        vignette=6186,
    },
    [62940509] = { -- Kaheti Bladeguard
        criteria=69670,
        quest=82078,
        npc=216052, -- Skirmisher Sa'ztyk
        loot={
            223915, -- Nerubian Orator's Stiletto
            223916, -- Nerubian Cutthroat's Reach
            223939, -- Esteemed Nerubian's Mantle
        },
        vignette=6204,
        note="Patrols the area",
    },
    [64590667] = { -- Deepcrawler Tx'kesh
        criteria=69669,
        quest=82077,
        npc=222624,
        loot={
            223916, -- Nerubian Cutthroat's Reach
            223923, -- Gilded Cryptlord's Sabatons
        },
        vignette=6203,
    },
}, {
    achievement=40840, -- Adventurer
    levels=true,
})

ns.RegisterPoints(2256, { -- Azj-Kahet Lower
    [64768691] = { -- Harvester Qixt
        criteria=69667,
        quest=82036,
        npc=216050,
        loot={
            223915, -- Nerubian Orator's Stiletto
            223941, -- Nerubian Cultivator's Girdle
        },
        vignette=6185,
    },
    [61938973] = { -- The Oozekhan
        criteria=69666,
        quest=82035,
        npc=216049,
        loot={
            223931, -- Black Blood Cowl
        },
        vignette=6184,
    },
    [67458318] = { -- Jix'ak the Crazed
        criteria=69665,
        quest=82034,
        npc=216048,
        loot={
            223916, -- Nerubian Cutthroat's Reach
            223917, -- Nerubian Covert's Cloak
            223950, -- Corruption Sifter's Treads
        },
        vignette=6183,
    },
    [63409500] = { -- The One Left
        quest=nil,
        npc=216047,
        loot={
            221246, -- Fierce Beast Staff
            221247, -- Cavernous Critter Shooter
            221251, -- Bestial Underground Cleaver
            225998, -- Earthen Adventurer's Cloak
        },
        path=65269328,
    },
}, {
    achievement=40840, -- Adventurer
    levels=true,
})

ns.RegisterPoints(ns.CITYOFTHREADS, {
    [36404160] = { -- The Groundskeeper
        criteria=69657,
        quest=81634,
        npc=216038,
        loot={
            221214, -- Chitin Chain Headpiece
            221240, -- Nerubian Stagshell Gouger
            221263, -- Nerubian Venom-Tipped Dart
        },
        vignette=6111,
    },
    [67165840] = { -- Xishorr
        criteria=69658,
        quest=81701,
        npc=216039,
        loot={
            221221, -- Venomous Lurker's Greathelm
            221506, -- Arachnid's Web-Sown Guise
        },
        vignette=6133,
    },
}, {
    achievement=40840, -- Adventurer
    parent=true, levels=true, translate={[2256]=true},
})

ns.RegisterPoints(ns.AZJKAHET, {
    [62796618] = { -- Tka'ktath
        quest=82289,
        npc=216046,
        loot={
            {225952, quest=83627}, -- Vial of Tka'ktath's Bloo
            -- {224150, mount=2222}, -- Siesbarg
            221240, -- Nerubian Stagshell Gouger
        },
        vignette=6265,
        note="Begins a quest chain leading to the mount {item:224150:Siesbarg}",
    },
}, {levels=true,})

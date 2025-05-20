--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Freesword\'s Club',
        Sub = 'Lauan Shield',
        Head = 'Ryl.Ftm. Bandana',
        Neck = 'Justice Badge',
        Body = 'Ryl.Ftm. Vest',
        Hands = 'Guerilla Gloves',
        Ring1 = { Name = 'San d\'Orian Ring', Augment = 'Accuracy+2' },
        Ring2 = 'Warp Ring',
        Back = 'Traveler\'s Mantle',
        Legs = 'Brass Subligar',
        Feet = 'Leaping Boots',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Default',
        Weapon = 'Club',
        ['W.Variant'] = 'L10',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Sword'] = {}
sets['Weapon']['Sword']['L09'] = {
    Main = 'Spatha',
    Sub = 'Lauan Shield',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['L16'] = {
    Main = 'Chestnut Club',
    Sub = 'Lauan Shield',
}
sets['Weapon']['Club']['L10'] = {
    Main = 'Freesword\'s Club',
    Sub = 'Lauan Shield',
}
--sets['Weapon']['Club']['Warp'] = {
--    Main = 'Warp Cudgel',
--}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    Main = 'Terra\'s Staff',
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Battle Gloves',
                    Ring1 = { Name = 'San d\'Orian Ring', Augment = 'Accuracy+2' },
                    Ring2 = 'Amethyst Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Brass Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L13'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Guerilla Gloves',
                    Ring1 = { Name = 'San d\'Orian Ring', Augment = 'Accuracy+2' },
                    Ring2 = 'Amethyst Ring',
                    Back = 'Traveler\'s Mantle',
                    Legs = 'Brass Subligar',
                    Feet = 'Leaping Boots',
                },
            },
        },
        ['VarToggles'] = {
            ['Fishing'] = {
                VarVisible = false,
                Ammo = '',
                Range = 'Lu Shang\'s F. Rod',
                Body = 'Angler\'s Tunica',
                Hands = 'Angler\'s Gloves',
                Legs = 'Angler\'s Hose',
                Feet = 'Waders',
            },
            ['Working'] = {
                VarVisible = false,
                Body = 'Worker Tunica',
                Hands = 'Worker Gloves',
                Legs = 'Worker Hose',
                Feet = 'Worker Boots',
            },
        },
        ['Movement'] = {
            -- Legs = 'Blood Cuisses',
            -- ['Thresholds'] = {
                -- ['Time'] = {
                    -- ['Dusk'] = {
                        -- threshold = 17,
                        -- operator = '>',
                        -- ['gear'] = {
                            -- --Feet = 'Ninja Kyahan +1'
                        -- },
                    -- },
                    -- ['Dawn'] = {
                        -- threshold = 7,
                        -- operator = '<',
                        -- ['gear'] = {
                            -- --Feet = 'Ninja Kyahan +1'
                        -- },
                    -- },
                -- },
            -- },
            -- ['Elemental'] = {
                -- ['Weather'] = {
                    -- ['Earth'] = {
                        -- --Feet = 'Desert Boots',
                    -- },
                -- },
            -- },
        },
    },
    ['Movement'] = {
        --Feet = 'Herald\'s Gaiters',
        ['Thresholds'] = {
            ['Area'] = {
                ['Sandy'] = {
                    threshold = T{'Southern San d\'Oria', 'Northern San d\'Oria', 'Port San d\'Oria', 'Chateau d\'Oraguille'},
                    operator = 'contains',
                    ['gear'] = {
                        Body = 'Kingdom Aketon',
                    },
                },
                ['Windurst'] = {
                    threshold = T{'Heavens Tower', 'Port Windurst', 'Windurst Waters', 'Windurst Walls', 'Windurst Woods'},
                    operator = 'contains',
                    ['gear'] = {
                        Body = 'Federation Aketon',
                    },
                },
            },
        },
    },
    ['Resting'] = {
        -- Main = 'Pluto\'s Staff',
        -- Head = 'Dls. Chapeau +1',
        -- Neck = 'Checkered Scarf',
        -- Ear1 = 'Sanative Earring',
        -- Ear2 = 'Relaxing Earring',
        -- Body = 'Errant Hpl.',
        Body = 'Seer\'s Tunic +1',
        Legs = 'Baron\'s Slops',
        -- ['Thresholds'] = {
            -- ['MP'] ={
                -- ['Low'] = {
                    -- threshold = 780,
                    -- operator = '<',
                    -- ['gear'] = {
                        -- Waist = 'Duelist\'s Belt',
                    -- },
                -- },
                -- ['High'] = {
                    -- threshold = 780,
                    -- operator = '>',
                    -- ['gear'] = {
                        -- Waist = 'Hierarch Belt',
                    -- },
                -- },
            -- },
        -- },
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Battle Gloves',
                    Ring1 = { Name = 'San d\'Orian Ring', Augment = 'Accuracy+2' },
                    Ring2 = 'Amethyst Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Brass Subligar',
                    Feet = 'Leaping Boots',                    
                },
                ['L13'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Guerilla Gloves',
                    Ring1 = { Name = 'San d\'Orian Ring', Augment = 'Accuracy+2' },
                    Ring2 = 'Amethyst Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Brass Subligar',
                    Feet = 'Leaping Boots',                    
                },
            },
        },
    },
    ['Omega'] = {   
    },
}

-- HandlePrecast
sets['Precast'] = {
}

-- HandleMidcast
-- Hastecast
local HasteCast = {
    -- Head = 'Warlock\'s Chapeau',
    -- Body = 'Dls. Tabard +1',
    -- Waist = 'Swift Belt',
}
sets['Midcast'] = {
    ['Alpha'] = {
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Justice Badge',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Justice Badge',
            Hands = 'Zealot\'s Mitts',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
        Hands = 'Zealot\'s Mitts',
    },
    ['Enhancing Magic'] = {
        Neck = 'Justice Badge',
        Hands = 'Zealot\'s Mitts',
    },
    ['Dark Magic'] = {
    },
    ['Divine Magic'] = {
        Neck = 'Justice Badge',
        Hands = 'Zealot\'s Mitts',
    },
    ['Elemental Magic'] = {
    },
    ['Omega'] = {
        ['Elemental'] = {
            -- ['Element'] = {
                -- ['Fire'] = {
                    -- Main = 'Vulcan\'s Staff',
                -- },
                -- ['Earth'] = {
                    -- Main = 'Terra\'s Staff',
                -- },
                -- ['Water'] = {
                    -- Main = 'Neptune\'s Staff',
                -- },
                -- ['Wind'] = {
                    -- Main = 'Auster\'s Staff',
                -- },
                -- ['Ice'] = {
                    -- Main = 'Aquilo\'s Staff',
                -- },
                -- ['Thunder'] = {
                    -- Main = 'Jupiter\'s Staff',
                -- },
                -- ['Light'] = {
                    -- Main = 'Apollo\'s Staff',
                -- },
                -- ['Dark'] = {
                    -- Main = 'Pluto\'s Staff',
                -- },
            -- },
            -- ['Day'] = {
                -- ClashCheck = true,
                -- ['Fire'] = {
                    -- Waist = 'Karin Obi',
                -- },
                -- ['Earth'] = {
                    -- Waist = 'Dorin Obi',
                -- },
                -- ['Water'] = {
                    -- Waist = 'Suirin Obi',
                -- },
                -- ['Wind'] = {
                    -- Waist = 'Furin Obi',
                -- },
                -- ['Ice'] = {
                    -- Waist = 'Hyorin Obi',
                -- },
                -- ['Thunder'] = {
                    -- Waist = 'Rairin Obi',
                -- },
                -- ['Light'] = {
                    -- Waist = 'Korin Obi',
                -- },
                -- ['Dark'] = {
                    -- Waist = 'Anrin Obi',
                -- },
            -- },
            -- ['Weather'] = {
                -- ClashCheck = true,
                -- ['Fire'] = {
                    -- Waist = 'Karin Obi',
                -- },
                -- ['Earth'] = {
                    -- Waist = 'Dorin Obi',
                -- },
                -- ['Water'] = {
                    -- Waist = 'Suirin Obi',
                -- },
                -- ['Wind'] = {
                    -- Waist = 'Furin Obi',
                -- },
                -- ['Ice'] = {
                    -- Waist = 'Hyorin Obi',
                -- },
                -- ['Thunder'] = {
                    -- Waist = 'Rairin Obi',
                -- },
                -- ['Light'] = {
                    -- Waist = 'Korin Obi',
                -- },
                -- ['Dark'] = {
                    -- Waist = 'Anrin Obi',
                -- },
            -- },
        },
        ['Haste'] = HasteCast,
        ['Refresh'] = HasteCast,
        ['Regen'] = HasteCast,
        ['Protect IV'] = HasteCast,
        ['Shell IV'] = HasteCast,
        ['Stun'] = HasteCast,
    },
}

-- HandlePreshot
sets['Preshot'] = {
}

-- HandleMidshot
sets['Midshot'] = {
}

-- HandleAbility
sets['Ability'] = {
}

-- HandleWeaponSkill
local WS_STR = {
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Waist = 'Brave Belt',
    Legs = 'Republic Subligar',
}
local WS_STR_MND = {
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = { Name = 'San d\'Orian Ring', Augment = 'Accuracy+2' },
    Ring2 = 'Courage Ring',
    Waist = 'Brave Belt',
    Legs = 'Republic Subligar',
}
sets['WeaponSkill'] = {
    ['Alpha'] = WS_STR,
    ['Seraph Strike'] = WS_STR_MND,
}
-- HandleItem
sets['Item'] = {
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
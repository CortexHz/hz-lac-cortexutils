--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Mace',
        Sub = 'Lauan Shield',
        Head = 'Ryl. Squire\'s Helm',
        Neck = 'Justice Badge',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Ctr. Scale Mail',
        Hands = 'Battle Gloves',
        Ring1 = 'San d\'Orian Ring',
        Ring2 = 'Warp Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Warrior\'s Belt',
        Legs = 'Ryl.Ftm. Trousers',
        Feet = 'Leaping Boots',
    },
    ['L25'] = {
        Main = 'Mace',
        Sub = 'Kite Shield',
        Head = 'Iron Mask',
        Neck = 'Justice Badge',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Beetle Harness',
        Hands = 'Battle Gloves',
        Ring1 = 'San d\'Orian Ring',
        Ring2 = 'Balance Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Warrior\'s Belt',
        Legs = 'Ryl.Ftm. Trousers',
        Feet = 'Leaping Boots',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Default',
        Weapon = 'Club',
        ['W.Variant'] = 'L55',
    },
    ['L55'] = {
        Idle = 'L55',
        TP = 'L55',
        Weapon = 'Club',
        ['W.Variant'] = 'L55',
    },
    ['L50'] = {
        Idle = 'L50',
        TP = 'L50',
        Weapon = 'Club',
        ['W.Variant'] = 'L50',
    },
    ['L40'] = {
        Idle = 'L40',
        TP = 'L40',
        Weapon = 'Club',
        ['W.Variant'] = 'L34',
    },
    ['L30'] = {
        Idle = 'L30',
        TP = 'L30',
        Weapon = 'Club',
        ['W.Variant'] = 'L30',
    },
    ['L25'] = {
        Idle = 'L25',
        TP = 'L25',
        Weapon = 'Club',
        ['W.Variant'] = 'L20',
    },
    ['L20'] = {
        Idle = 'L21',
        TP = 'L21',
        Weapon = 'Club',
        ['W.Variant'] = 'L20',
    },
    ['L15'] = {
        Idle = 'L15',
        TP = 'L15',
        Weapon = 'Club',
        ['W.Variant'] = 'L10',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Sword'] = {}
sets['Weapon']['Sword']['L66'] = {
    Main = 'Espadon',
    Sub = 'Ryl.Grd. Shield',
}
sets['Weapon']['Sword']['L55'] = {
    Main = 'Tct.Mag. Espadon',
    Sub = 'Ryl.Grd. Shield',
}
sets['Weapon']['Sword']['L50'] = {
    Main = 'Tct.Mag. Espadon',
    Sub = 'R.K. Army Shield',
}
sets['Weapon']['Sword']['L42'] = {
    Main = 'Honor Sword',
    Sub = 'Kite Shield',
}
sets['Weapon']['Sword']['L09'] = {
    Main = 'Spatha',
    Sub = 'Lauan Shield',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['L55'] = {
    Main = 'Kingdom Mace',
    Sub = 'Ryl.Grd. Shield',
}
sets['Weapon']['Club']['L50'] = {
    Main = 'Kingdom Mace',
    Sub = 'R.K. Army Shield',
}
sets['Weapon']['Club']['L34'] = {
    Main = 'Kingdom Mace',
    Sub = 'Kite Shield',
}
sets['Weapon']['Club']['L30'] = {
    Main = 'Ryl.Sqr. Mace',
    Sub = 'Kite Shield',
}
sets['Weapon']['Club']['L28'] = {
    Main = 'Mace',
    Sub = 'Kite Shield',
}
sets['Weapon']['Club']['L20'] = {
    Main = 'Mace',
    Sub = 'Mahogany Shield',
}
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
sets['Weapon']['Staff']['Signet'] = {
    Main = 'Kgd. Signet Staff',
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Head = 'Gallant Coronet',
                    Neck = 'Van Pendant',
                    Ear1 = 'Wing Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Ryl.Kgt. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Amemet Mantle',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Gallant Breeches',
                    Feet = 'Gallant Leggings',
                },
                ['L55'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Wing Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Ryl.Kgt. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Gallant Leggings',
                },
                ['L50'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L40'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L30'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ctr. Scale Mail',
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L25'] = {
                    Head = 'Iron Mask',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Chainmail',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L21'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Beetle Harness',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L15'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
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
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
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
                --Body = 'Worker Tunica',
                Hands = 'Field Gloves',
                Legs = 'Field Hose',
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
        --Body = 'Seer\'s Tunic +1',
        --Legs = 'Baron\'s Slops',
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
                    Head = 'Gallant Coronet',
                    Neck = 'Van Pendant',
                    Ear1 = 'Wing Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Ryl.Kgt. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Amemet Mantle',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Gallant Breeches',
                    Feet = 'Gallant Leggings',                   
                },
                ['DD'] = {
                    Head = 'Ryl.Kgt. Bascinet',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Kgt. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Leaping Boots',                   
                },
                ['L55'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Wing Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Ryl.Kgt. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Gallant Leggings',
                },
                ['L50'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Wing Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',                   
                },
                ['L40'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Wing Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',                   
                },
                ['L30'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ctr. Scale Mail',
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',                   
                },
                ['L25'] = {
                    Head = 'Iron Mask',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Chainmail',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L21'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Beetle Harness',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',                    
                },
                ['L15'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
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
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Brass Subligar',
                    Feet = 'Leaping Boots',                    
                },
            },
        },
    },
    ['Omega'] = {
        ['VarToggles'] = {
            ['Warp'] = {
                VarVisible = false,
                Ring2 = 'Warp Ring',
            },
            ['ExpRing'] = {
                VarVisible = false,
                Ring2 = 'Empress Band',
            },
            ['Sneak'] = {
                VarVisible = false,
                Feet = 'Dream Boots +1',
            },
        },
        ['Buff'] = {
            ['Cover'] = {
                Head = 'Gallant Coronet',
            },
        },
    },
}

-- HandlePrecast
sets['Precast'] = {
}

-- HandleMidcast
sets['MidcastIdle'] = {
    ['Alpha'] = sets['Default']['Idle']
}

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
        Head = 'Gallant Coronet',
        Neck = 'Justice Badge',
        Hands = 'Zealot\'s Mitts',
    },
    ['Enhancing Magic'] = {
        Neck = 'Justice Badge',
        Hands = 'Zealot\'s Mitts',
        Legs = 'Gallant Breeches',
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
    Head = 'Ryl.Kgt. Bascinet',
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Ring1 = 'San d\'Orian Ring',
    Ring2 = 'Courage Ring',
    Waist = 'Brave Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Leaping Boots',
}
local WS_STR_MND = {
    Head = 'Gallant Coronet',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'San d\'Orian Ring',
    Ring2 = 'Courage Ring',
    Waist = 'Brave Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Leaping Boots',
}
sets['WeaponSkill'] = {
    ['Alpha'] = WS_STR,
    ['Moonlight'] = WS_STR_MND,
    ['Seraph Strike'] = WS_STR_MND,
}
-- HandleItem
sets['Item'] = {
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
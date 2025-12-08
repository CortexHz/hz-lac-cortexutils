--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Yew Wand +1',
        Sub = 'Tropical Shield',
        Head = 'Seer\'s Crown +1',
        Neck = 'Justice Badge',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Seer\'s Tunic +1',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Astral Ring',
        Ring2 = 'Astral Ring',
        Back = 'Mist Silk Cape',
        Waist = 'Friar\'s Rope',
        Legs = 'Seer\'s Slacks +1',
        Feet = 'Mgn. M Ledelsens',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Default',
        Weapon = 'Club',
        ['W.Variant'] = 'L34',
        Ranged = 'Fishing',
        ['R.Variant'] = 'Tarutaru',
        Ammo = 'Worm Lure',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    Main = 'Terra\'s Staff',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['L36'] = {
    Main = 'Oak Cudgel +1',
    Sub = "Centurion\'s Sword",
}
sets['Weapon']['Club']['L34'] = {
    Main = 'Kingdom Mace',
    Sub = 'Tortoise Shield',
}
sets['Weapon']['Club']['L30'] = {
    Main = 'Ryl.Sqr. Mace',
    Sub = 'Ryl.Sqr. Mace',
}
sets['Weapon']['Club']['L27'] = {
    Main = 'Mace',
    Sub = 'Bone Cudgel',
}
sets['Weapon']['Club']['L20'] = {
    Main = 'Mace',
    Sub = 'Yew Wand',
}
sets['Weapon']['Club']['L18'] = {
    Main = 'Yew Wand',
    Sub = 'Pelte',
}
sets['Weapon']['Club']['L09'] = {
    Main = 'Willow Wand',
    Sub = 'Pelte',
}

sets['Ranged'] = {}
sets['Ranged']['Fishing'] = {}
sets['Ranged']['Fishing']['Tarutaru'] = {
    Range = 'Tarutaru F. Rod',
    ['VarCycles'] = {
        ['Ammo'] = {
            ['Insect Ball'] = {
                Ammo = 'Insect Ball',
            },
            ['Sabiki Rig'] = {
                Ammo = 'Sabiki Rig',
            },
            ['Fly Lure'] = {
                Ammo = 'Fly Lure',
            },
            ['Worm Lure'] = {
                Ammo = 'Worm Lure',
            },
        },
    },
}
sets['Ranged']['Fishing']['Hume'] = {
    Range = 'Hume Fishing Rod',
    ['VarCycles'] = {
        ['Ammo'] = {
            ['Insect Ball'] = {
                Ammo = 'Insect Ball',
            },
            ['Sabiki Rig'] = {
                Ammo = 'Sabiki Rig',
            },
            ['Fly Lure'] = {
                Ammo = 'Fly Lure',
            },
        },
    },
}
sets['Ranged']['Fishing']['Halcyon'] = {
    Range = 'Halcyon Rod',
    ['VarCycles'] = {
        ['Ammo'] = {
            ['Insect Ball'] = {
                Ammo = 'Insect Ball',
            },
            ['Sabiki Rig'] = {
                Ammo = 'Sabiki Rig',
            },
            ['Fly Lure'] = {
                Ammo = 'Fly Lure',
            },
            ['Worm Lure'] = {
                Ammo = 'Worm Lure',
            },
        },
    },
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Head = 'Silver Hairpin',
                    Neck = 'Justice Badge',
                    Ear2 = 'Astral Earring',
                    Body = 'Worker Tunica',
                    Hands = 'Zealot\'s Mitts',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Vilma\'s Ring',
                    Back = 'Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Linen Slops',
                    Feet = 'Worker Boots',  
                },
                ['L20'] = {
                    Head = 'Silver Hairpin',
                    Neck = 'Justice Badge',
                    Body = 'Worker Tunica',
                    Hands = 'Zealot\'s Mitts',
                    Ring1 = 'Astral Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Linen Slops',
                    Feet = 'Worker Boots', 
                },
                ['L15'] = {
                    Head = 'Silver Hairpin',
                    Neck = 'Justice Badge',
                    Body = 'Worker Tunica',
                    Hands = 'Zealot\'s Mitts',
                    Ring1 = 'Astral Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Linen Slops',
                    Feet = 'Worker Boots',                     
                },
                ['L13'] = {
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Tunic',
                    Hands = 'Zealot\'s Mitts',
                    Ring1 = 'Astral Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Dream Trousers +1',
                    Feet = 'Dream Boots +1',                   
                },
            },
        },
        ['VarToggles'] = {
            ['Fishing'] = {
                VarVisible = false,
                Body = 'Angler\'s Tunica',
                Hands = 'Angler\'s Gloves',
                Legs = 'Fisherman\'s Hose',
                Feet = 'Angler\'s Boots',
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
                    Head = 'Emperor Hairpin',
                    Neck = 'Justice Badge',
                    Ear2 = 'Astral Earring',
                    Body = 'Worker Tunica',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring1 = 'Rajas Ring',
                    Back = 'Mist Silk Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Linen Slops',
                    Feet = 'Worker Boots',
                },
                ['L20'] = {
                    Head = 'Silver Hairpin',
                    Neck = 'Justice Badge',
                    Body = 'Worker Tunica',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Astral Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Mist Silk Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Linen Slops',
                    Feet = 'Worker Boots',
                },
                ['L15'] = {
                    Head = 'Silver Hairpin',
                    Neck = 'Justice Badge',
                    Body = 'Worker Tunica',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Astral Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Mist Silk Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Linen Slops',
                    Feet = 'Worker Boots',                       
                },
                ['L13'] = {
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Tunic',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Mist Silk Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Dream Trousers +1',
                    Feet = 'Dream Boots +1',                   
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
    },
}

-- HandlePrecast
sets['Precast'] = {
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
        Ear2 = 'Astral Earring',
        Hands = 'Zealot\'s Mitts',
    },
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
            Head = 'Seer\'s Crown +1',
            Neck = 'Justice Badge',
            Hands = 'Seer\'s Mitts +1',
            Ear1 = 'Morion Earring',
            Ear2 = 'Morion Earring',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Justice Badge',
            Ear2 = 'Astral Earring',
            Hands = 'Zealot\'s Mitts',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
        Ear2 = 'Astral Earring',
        Hands = 'Zealot\'s Mitts',
    },
    ['Enhancing Magic'] = {
        Neck = 'Justice Badge',
    },
    ['Dark Magic'] = {
        Head = 'Seer\'s Crown +1',
        Neck = 'Justice Badge',
        Hands = 'Seer\'s Mitts +1',
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
    },
    ['Divine Magic'] = {
        Neck = 'Justice Badge',
        Ear2 = 'Astral Earring',
    },
    ['Elemental Magic'] = {
        Head = 'Seer\'s Crown +1',
        Neck = 'Justice Badge',
        Hands = 'Seer\'s Mitts +1',
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
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
        ['Sneak'] = {Back = 'Skulker\'s Cape'},
        ['Invisible'] = {Back = 'Skulker\'s Cape'},
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
    Ring2 = 'Sun Ring',
}
sets['WeaponSkill'] = {
    ['Fastblade'] = WS_STR,
}

-- HandleItem
sets['Item'] = {
    ['Orange Juice'] = {
        Legs = 'Dream Trousers +1',
    }
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
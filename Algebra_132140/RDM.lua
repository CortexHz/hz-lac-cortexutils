--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Wax Sword +1',
        Sub = 'Lauan Shield +1',
        Neck = 'Justice Badge',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Ryl.Ftm. Tunic',
        Hands = 'Elvaan Gloves',
        Ring1 = 'San d\'Orian Ring',
        Ring2 = 'Astral Ring',
        Back = 'Mist Silk Cape',
        Legs = 'Freesword\'s Slops',
        Feet = 'Solea +1',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Nation = false,
        Idle = 'Defense',
        TP = 'Default',
        Weapon = 'Sword',
        ['W.Variant'] = 'Defense',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Sword'] = {}
sets['Weapon']['Sword']['Default'] = {
    Main = 'Bee Spatha +1',
    Sub = 'Lauan Shield +1',
}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    --Main = 'Terra\'s Staff',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['Default'] = {
    Main = 'Willow Wand +1',
    Sub = 'Lauan Shield +1',
}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Refresh'] = {
                    Neck = 'Justice Badge',
                    Ear1 = 'Energy Earring +1',
                    Ear2 = 'Energy Earring +1',
                    Body = 'Ryl.Ftm. Tunic',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Astral Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Mist Silk Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Freesword\'s Slops',
                    Feet = 'Solea +1',
                },
                ['Defense'] = {
                    Neck = 'Justice Badge',
                    Ear1 = 'Energy Earring +1',
                    Ear2 = 'Energy Earring +1',
                    Body = 'Ryl.Ftm. Tunic',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Mist Silk Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Freesword\'s Slops',
                    Feet = 'Solea +1',
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
    },
    ['Movement'] = {
        --Feet = 'Herald\'s Gaiters',
        ['Thresholds'] = {
            ['Area'] = {
                ['Windurst'] = {
                    threshold = T{'Southern San d\'Oria', 'Northern San d\'Oria', 'Port San d\'Oria', 'Chateau d\'Oraguille'},
                    operator = 'contains',
                    ['gear'] = {
                        Body = 'Kingdom Aketon',
                    },
                },
            },
        },
    },
    ['Resting'] = {
        Main = 'Pluto\'s Staff',
        Head = 'Dls. Chapeau +1',
        Neck = 'Checkered Scarf',
        Ear1 = 'Sanative Earring',
        Ear2 = 'Relaxing Earring',
        Body = 'Errant Hpl.',
        Legs = 'Baron\'s Slops',
        ['Thresholds'] = {
            ['MP'] ={
                ['Low'] = {
                    threshold = 780,
                    operator = '<',
                    ['gear'] = {
                        Waist = 'Duelist\'s Belt',
                    },
                },
                ['High'] = {
                    threshold = 780,
                    operator = '>',
                    ['gear'] = {
                        Waist = 'Hierarch Belt',
                    },
                },
            },
        },
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {

                },
                ['Acc'] = {

                },
            },
        },
    },
    ['Omega'] = {   
    },
}

-- HandlePrecast
sets['Precast'] = {
    ['Alpha'] = {
        Head = 'Warlock\'s Chapeau',
        Body = 'Dls. Tabard +1',
    },
}

-- HandleMidcast
local ElementalDebuff = {
    Neck = 'Justice Badge',
}
-- Hastecast
local HasteCast = {
    Head = 'Warlock\'s Chapeau',
    Body = 'Dls. Tabard +1',
    Waist = 'Swift Belt',
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
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
    },
    ['Enhancing Magic'] = {
        Neck = 'Justice Badge',
    },
    ['Dark Magic'] = {
        Neck = 'Justice Badge',
    },
    ['Divine Magic'] = {
        Neck = 'Justice Badge',
    },
    ['Rasp'] = ElementalDebuff,
    ['Choke'] = ElementalDebuff,
    ['Frost'] = ElementalDebuff,
    ['Burn'] = ElementalDebuff,
    ['Drown'] = ElementalDebuff,
    ['Shock'] = ElementalDebuff,
    -- ['Elemental Magic'] = {
        -- Head = 'Warlock\'s Chapeau',
        -- Neck = 'Elemental Torque',
        -- Ear1 = 'Moldavite Earring',
        -- Ear2 = 'Novio Earring',
        -- Body = 'Errant Hpl.',
        -- Hands = 'Zenith Mitts',
        -- Ring1 = 'Tamas Ring',
        -- Ring2 = 'Snow Ring',
        -- Back = 'Prism Cape',
        -- Waist = 'Penitent\'s Rope',
        -- Legs = 'Dls. Tights +1',
        -- Feet = 'Dls. Boots +1',
        -- ['VarToggles'] = {
            -- ['Nation'] = {
                -- Head = 'Republic Circlet',
            -- },
        -- },
        -- ['Thresholds'] = {
            -- ['MppAftercast'] = {
                -- ['UNeck'] = {
                    -- threshold = 51,
                    -- operator = '<',
                    -- ['gear'] = {
                        -- --Neck = 'Uggalepih Pendant',
                    -- },
                -- },
            -- },
        -- },
    -- },
    ['Omega'] = {
        -- ['Elemental'] = {
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
        -- },
        -- ['Haste'] = HasteCast,
        -- ['Refresh'] = HasteCast,
        -- ['Regen'] = HasteCast,
        -- ['Protect IV'] = HasteCast,
        -- ['Shell IV'] = HasteCast,
        -- ['Stun'] = HasteCast,
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
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
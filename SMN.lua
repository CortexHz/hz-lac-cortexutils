--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Bastokan Staff',
        Range = 'Lu Shang\'s F. Rod',
        Ammo = 'Minnow',
        Neck = 'Justice Badge',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Black Tunic',
        Hands = 'Asbestos Mitts',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Astral Ring',
        Back = 'Mist Silk Cape',
        Waist = 'Friar\'s Rope',
        Legs = 'Angler\'s Hose',
        Feet = 'Waders',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Defense',
        TP = 'Default',
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
        Burst = false,
    },
    ['L65'] = {
        Idle = 'L65',
        TP = 'Default',
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
        Burst = false,
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    Main = "Bastokan Staff",
    --Main = 'Terra\'s Staff',
}
sets['Weapon']['Staff']['Treat'] = {
    Main = "Treat Staff II",
    --Main = 'Terra\'s Staff',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['Warp'] = {
    Main = "Warp Cudgel",
}
sets['Weapon']['Club']['Hammer'] = {
    Main = "Club Hammer",
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Ammo = 'Fortune Egg',
                    Neck = 'Justice Badge',
                    Ear1 = 'Energy Earring +1',
                    Ear2 = 'Energy Earring +1',
                    Body = 'Black Tunic',
                    Hands = 'Asbestos Mitts',
                    Ring1 = 'Saintly Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Mist Silk Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Baron\'s Slops',
                    Feet = 'Waders',
                },
                ['Defense'] = {
                    Ammo = 'Fortune Egg',
                    Neck = 'Justice Badge',
                    Ear1 = 'Energy Earring +1',
                    Ear2 = 'Energy Earring +1',
                    Body = 'Black Tunic',
                    Hands = 'Asbestos Mitts',
                    Ring1 = 'Saintly Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Mist Silk Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Baron\'s Slops',
                    Feet = 'Waders',
                },
                ['L65'] = {

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
            --Feet = 'Herald\'s Gaiters',
            ['Thresholds'] = {
                ['Time'] = {
                    ['Dusk'] = {
                        threshold = 17,
                        operator = '>',
                        ['gear'] = {
                            --Feet = 'Ninja Kyahan +1'
                        },
                    },
                    ['Dawn'] = {
                        threshold = 7,
                        operator = '<',
                        ['gear'] = {
                            --Feet = 'Ninja Kyahan +1'
                        },
                    },
                },
            },
            ['Elemental'] = {
                ['Weather'] = {
                    ['Earth'] = {
                        --Feet = 'Desert Boots',
                    },
                },
            },
        },
    },
    ['Resting'] = {
        --Main = 'Pluto\'s Staff',
        --Neck = 'Checkered Scarf',
        --Ear1 = 'Sanative Earring',
        --Ear2 = 'Relaxing Earring',
        Body = 'Seer\'s Tunic +1',
        --Body = 'Errant Hpl.',
        --Body = 'Black Cloak',
        --Waist = 'Hierarch Belt',
        Legs = 'Baron\'s Slops',
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
    ['Pet'] = {
        ['Carbuncle'] = {
            Hands = 'Angler\'s Gloves',
        },
        ['Healing Ruby'] = {
            Body = 'Worker Tunica',
        },
    },
    ['Omega'] = {

    },
}

-- HandlePrecast
sets['Precast'] = {
    ['Alpha'] = {
        Feet = 'Rostrum Pumps',
    },
}

-- HandleMidcast
sets['Midcast'] = {
    ['Alpha'] = {
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Ammo = 'Phtm. Tathlum',
            Neck = 'Enfeebling Torque',
            --Ring1 = 'Tamas Ring',
            Ring1 = 'Eremite\'s Ring +1',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Enfeebling Torque',
            Hands = 'Devotee\'s Mitts',
            --Ring1 = 'Tamas Ring',
            Ring1 = 'Saintly Ring',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
        Hands = 'Devotee\'s Mitts',
        --Ring1 = 'Tamas Ring',
        Ring1 = 'Saintly Ring',
    },
    ['Enhancing Magic'] = {
        Neck = 'Justice Badge',
        Hands = 'Devotee\'s Mitts',
        --Ring1 = 'Tamas Ring',
        Ring1 = 'Saintly Ring',
    },
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
    ['Healing Ruby'] = {
    },
}

-- HandleWeaponSkill
local WS_STR = {
    Neck = 'Spike Necklace',
    Ring2 = 'Sun Ring',
}
sets['WeaponSkill'] = {
    ['Heavy Swing'] = WS_STR,
}

-- HandleItem
sets['Item'] = {
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
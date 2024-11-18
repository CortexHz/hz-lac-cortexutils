--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Kukulcan\'s Staff',
        Ammo = 'Fortune Egg',
        Head = 'Austere Hat',
        Neck = 'Justice Badge',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Austere Robe',
        Hands = 'Austere Cuffs',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Astral Ring',
        Back = 'Mist Silk Cape',
        Waist = 'Friar\'s Rope',
        Legs = 'Austere Slops',
        Feet = 'Austere Sabots',
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
    Main = 'Terra\'s Staff',
}
sets['Weapon']['Staff']['Treat'] = {
    Main = 'Treat Staff II',
}
sets['Weapon']['Staff']['Trick'] = {
    Main = 'Kukulcan\'s Staff',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}
sets['Weapon']['Club']['Hammer'] = {
    Main = 'Club Hammer',
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Head = 'Austere Hat',
                    Neck = 'Justice Badge',
                    Ear1 = 'Energy Earring +1',
                    Ear2 = 'Energy Earring +1',
                    Body = 'Austere Robe',
                    Hands = 'Austere Cuffs',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Mist Silk Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Evoker\'s Spats',
                    Feet = 'Austere Sabots',
                },
                ['Defense'] = {
                    Head = 'Austere Hat',
                    Neck = 'Justice Badge',
                    Ear1 = 'Energy Earring +1',
                    Ear2 = 'Energy Earring +1',
                    Body = 'Austere Robe',
                    Hands = 'Austere Cuffs',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Astral Ring',
                    Back = 'Mist Silk Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Evoker\'s Spats',
                    Feet = 'Austere Sabots',
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

    },
    ['Movement'] = {
        --Feet = 'Herald\'s Gaiters',
        ['Thresholds'] = {
            ['Area'] = {
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
        Main = 'Pluto\'s Staff',
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
        Head = 'Austere Hat',
        Body = 'Austere Robe',
        Hands = 'Austere Cuffs',
        ['Engaged'] = {
            Legs = 'Evoker\'s Spats',
        },
        ['MobSkill'] = {
            Legs = 'Evoker\'s Spats',
            Feet = 'Austere Sabots',
            ['Earthen Ward'] = {
                Legs = 'Austere Slops',
            },
        },
        ['Ifrit'] = {
            Main = 'Vulcan\'s Staff',
        },
        ['Fire Spirit'] = {
            Main = 'Vulcan\'s Staff',
        },
        ['Titan'] = {
            Main = 'Terra\'s Staff',
        },
        ['Earth Spirit'] = {
            Main = 'Terra\'s Staff',
        },
        ['Leviathan'] = {
            Main = 'Neptune\'s Staff',
        },
        ['Water Spirit'] = {
            Main = 'Neptune\'s Staff',
        },
        ['Garuda'] = {
            Main = 'Auster\'s Staff',
        },
        ['Wind Spirit'] = {
            Main = 'Auster\'s Staff',
        },
        ['Shiva'] = {
            Main = 'Aquilo\'s Staff',
        },
        ['Ice Spirit'] = {
            Main = 'Aquilo\'s Staff',
        },
        ['Ramuh'] = {
            Main = 'Jupiter\'s Staff',
        },
        ['Thunder Spirit'] = {
            Main = 'Jupiter\'s Staff',
        },
        ['Carbuncle'] = {
            Main = 'Apollo\'s Staff',
        },
        ['Light Spirit'] = {
            Main = 'Apollo\'s Staff',
        },
        ['Fenrir'] = {
            Main = 'Pluto\'s Staff',
        },
        ['Diabolos'] = {
            Main = 'Pluto\'s Staff',
        },
        ['Dark Spirit'] = {
            Main = 'Pluto\'s Staff',
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
    ['Summoning'] = {
        Body = 'Austere Robe',
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Ammo = 'Phtm. Tathlum',
            Neck = 'Enfeebling Torque',
            --Ring1 = 'Tamas Ring',
            Ring1 = 'Tamas Ring',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Enfeebling Torque',
            Hands = 'Devotee\'s Mitts',
            --Ring1 = 'Tamas Ring',
            Ring1 = 'Tamas Ring',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
        Hands = 'Devotee\'s Mitts',
        --Ring1 = 'Tamas Ring',
        Ring1 = 'Tamas Ring',
    },
    ['Enhancing Magic'] = {
        Neck = 'Justice Badge',
        Hands = 'Devotee\'s Mitts',
        --Ring1 = 'Tamas Ring',
        Ring1 = 'Tamas Ring',
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
    ['Blood Pact: Rage'] = {
        Head = 'Austere Hat',
        Body = 'Austere Robe',
        Hands = 'Austere Cuffs',
        Legs = 'Austere Slops',
        Feet = 'Austere Sabots',
    },
    ['Blood Pact: Ward'] = {
        Head = 'Austere Hat',
        Body = 'Austere Robe',
        Hands = 'Austere Cuffs',
        Legs = 'Austere Slops',
        Feet = 'Austere Sabots',
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
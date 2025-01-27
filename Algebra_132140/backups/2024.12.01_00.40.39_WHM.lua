--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Terra\'s Staff',
        Range = 'Lu Shang\'s F. Rod',
        Head = 'Wizard\'s Petasos',
        Neck = 'Elemental Torque',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Phantom Earring',
        Body = 'Angler\'s Tunica',
        Hands = 'Angler\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Phalanx Ring',
        Back = 'Prism Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Angler\'s Hose',
        Feet = 'Waders',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Defense',
        TP = 'Default',
        Weapon = 'Club',
        ['W.Variant'] = 'Default',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    Main = 'Terra\'s Staff',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['Default'] = {
    Main = 'Ash Club +1',
}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Defense'] = {
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
    ['Resting'] = {
        -- Main = 'Pluto\'s Staff',
        -- Head = 'Dls. Chapeau +1',
        -- Neck = 'Checkered Scarf',
        -- Ear1 = 'Sanative Earring',
        -- Ear2 = 'Relaxing Earring',
        -- Body = 'Errant Hpl.',
        -- Legs = 'Baron\'s Slops',
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
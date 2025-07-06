--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Willow Wand',
        Ammo = 'Crossbow Bolt',
        Neck = 'Justice Badge',
        Body = 'Ryl.Ftm. Tunic',
        Hands = 'Elvaan Gloves',
        Ring1 = 'San d\'Orian Ring',
        Ring2 = 'Balance Ring',
        Legs = 'Elv. M Chausses',
        Feet = 'Solea',
    },
    ['nuke'] = {
        Main = 'Willow Wand',
        Ammo = 'Crossbow Bolt',
        Neck = 'Justice Badge',
        Body = 'Ryl.Ftm. Tunic',
        Hands = 'Elvaan Gloves',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
        Legs = 'Elv. M Chausses',
        Feet = 'Solea',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Defense',
        TP = 'Default',
        Nuke = 'Default',
        SorcRing = false,
        Nation = false,
        Weapon = 'Club',
        ['W.Variant'] = 'L18',
        Burst = false,
    },
    ['L65'] = {
        Idle = 'L65',
        TP = 'Default',
        Nuke = 'L65Max',
        SorcRing = false,
        Nation = false,
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
        Burst = false,
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Scythe'] = {}
sets['Weapon']['Scythe']['Outrance'] = {
    Main = 'A L\'Outrance',
}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    Main = 'Terra\'s Staff',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['L09'] = {
    Main = 'Willow Wand',
}
sets['Weapon']['Club']['L18'] = {
    Main = 'Yew Wand',
}
sets['Weapon']['Club']['L32'] = {
    Main = 'Solid Wand',
}
sets['Weapon']['Club']['Dual'] = {
    Main = 'Solid Wand',
    Sub = 'Solid Wand',
}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Tunic',
                    Hands = 'Elvaan Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Legs = 'Elv. M Chausses',
                    Feet = 'Solea',
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
        },
        ['Buff'] = {
            ['Shock Spikes'] = {
                Ring2 = 'Opuntia Hoop',
            },
            ['Blaze Spikes'] = {
                Ring2 = 'Opuntia Hoop',
            },
            ['Ice Spikes'] = {
                Ring2 = 'Opuntia Hoop',
            }, 
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
            },
        },
    },
    ['Resting'] = {
        Main = 'Gelong Staff',
        Neck = 'Green Scarf',
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
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Tunic',
                    Hands = 'Elvaan Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Legs = 'Elv. M Chausses',
                    Feet = 'Solea',
                    -- Ammo = 'Phtm. Tathlum',
                    -- Head = 'Wizard\'s Petasos',
                    -- Neck = 'Spike Necklace',
                    -- Ear1 = 'Novia Earring',
                    -- Ear2 = 'Novio Earring',
                    -- Body = 'Sorcerer\'s Coat',
                    -- Hands = 'Zenith Mitts',
                    -- Ring1 = 'Tamas Ring',
                    -- Ring2 = 'Phalanx Ring',
                    -- Back = 'Hexerei Cape',
                    -- Waist = 'Swift Belt',
                    -- Legs = 'Sorcerer\'s Tonban',
                    -- Feet = 'Sorcerer\'s Sabots',
                -- },
                -- ['Acc'] = {
                    -- Ammo = 'Phtm. Tathlum',
                    -- Head = 'Wizard\'s Petasos',
                    -- Neck = 'Spike Necklace',
                    -- Ear1 = 'Novia Earring',
                    -- Ear2 = 'Novio Earring',
                    -- Body = 'Sorcerer\'s Coat',
                    -- Hands = 'Zenith Mitts',
                    -- Ring1 = 'Tamas Ring',
                    -- Ring2 = 'Phalanx Ring',
                    -- Back = 'Hexerei Cape',
                    -- Waist = 'Swift Belt',
                    -- Legs = 'Sorcerer\'s Tonban',
                    -- Feet = 'Sorcerer\'s Sabots',
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

sets['MidcastIdle'] = {
    --Main = 'Terra\'s Staff',
    Ring1 = 'San d\'Orian Ring',
    Ring2 = 'Phalanx Ring',
    --Back = 'Hexerei Cape',
    --Feet = 'Wizard\'s Sabots',
}

-- HandleMidcast
local ElementalDebuff = {
    -- Ammo = 'Phtm. Tathlum',
    Neck = 'Black Neckerchief',
    -- Ear1 = 'Phantom Earring',
    -- Ear2 = 'Phantom Earring',
    -- Body = 'Black Cloak',
    -- Hands = 'Wizard\'s Gloves',
    -- Ring1 = 'Tamas Ring',
    -- Ring2 = 'Snow Ring',
    -- Back = 'Prism Cape',
    -- Waist = 'Sorcerer\'s Belt',
    -- Legs = 'Errant Slops',
    -- Feet = 'Sorcerer\'s Sabots',
}
sets['Midcast'] = {
    ['Alpha'] = {
        ['Thresholds'] = {
            ['MP'] = {
                ['MP1'] = {
                    threshold = 330,
                    operator = '<',
                    ['gear'] = {
                        Body = 'Baron\'s Saio',
                    },
                },
                -- ['MP2'] = {
                    -- threshold = 305,
                    -- operator = '<',
                    -- ['gear'] = {
                        -- Ring1 = 'Eremite\'s Ring +1',
                    -- },
                -- },
                -- ['MP3'] = {
                    -- threshold = 280,
                    -- operator = '<',
                    -- ['gear'] = {
                        -- Ring2 = 'Eremite\'s Ring +1',
                    -- },
                -- },
            },
        },
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Black Neckerchief',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Justice Badge',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
        -- Ear1 = 'Novia Earring',
        -- Body = 'Wizard\'s Coat',
        -- Hands = 'Devotee\'s Mitts',
        -- Ring1 = 'Tamas Ring',
        -- Ring2 = 'Aqua Ring',
        -- Waist = 'Penitent\'s Rope',
        -- Legs = 'Errant Slops',
    },
    ['Enhancing Magic'] = {
    },
    ['Dark Magic'] = {
        -- Ammo = 'Phtm. Tathlum',
        -- Head = 'Wizard\'s Petasos',
        Neck = 'Black Neckerchief',
        -- Ear1 = 'Phantom Earring',
        -- Ear2 = 'Phantom Earring',
        -- Body = 'Errant Hpl.',
        -- Hands = 'Sorcerer\'s Gloves',
        -- Ring1 = 'Tamas Ring',
        -- Ring2 = 'Snow Ring',
        -- Back = 'Prism Cape',
        -- Waist = 'Sorcerer\'s Belt',
        -- Legs = 'Wizard\'s Tonban',
        -- Feet = 'Sorcerer\'s Sabots',
        -- ['Aspir'] = {
            -- Ring2 = 'Overlord\'s Ring',
        -- },
        -- ['Drain'] = {
            -- Ring2 = 'Overlord\'s Ring',
        -- },
    },
    ['Rasp'] = ElementalDebuff,
    ['Choke'] = ElementalDebuff,
    ['Frost'] = ElementalDebuff,
    ['Burn'] = ElementalDebuff,
    ['Drown'] = ElementalDebuff,
    ['Shock'] = ElementalDebuff,
    ['Elemental Magic'] = {
        ['VarCycles'] = {
            ['Nuke'] = {
                ['Default'] = {
                    Ring1 = 'Eremite\'s Ring',
                    Ring2 = 'Eremite\'s Ring',
                    -- Ammo = 'Phtm. Tathlum',
                    -- Head = 'Src. Petasos +1',
                    -- Neck = 'Elemental Torque',
                    -- Ear1 = 'Moldavite Earring',
                    -- Ear2 = 'Novio Earring',
                    -- Body = 'Igqira Weskit',
                    -- Hands = 'Zenith Mitts',
                    -- Ring1 = 'Tamas Ring',
                    -- Ring2 = 'Snow Ring',
                    -- Back = 'Prism Cape',
                    -- Waist = 'Sorcerer\'s Belt',
                    -- Legs = 'Errant Slops',
                    -- Feet = 'Sorcerer\'s Sabots',
                -- },
                -- ['MAtt'] = {
                    -- Ammo = 'Phtm. Tathlum',
                    -- Head = 'Wizard\'s Petasos',
                    -- Neck = 'Elemental Torque',
                    -- Ear1 = 'Moldavite Earring',
                    -- Ear2 = 'Novio Earring',
                    -- Body = 'Igqira Weskit',
                    -- Hands = 'Zenith Mitts',
                    -- Ring1 = 'Tamas Ring',
                    -- Ring2 = 'Snow Ring',
                    -- Back = 'Prism Cape',
                    -- Waist = 'Sorcerer\'s Belt',
                    -- Legs = 'Errant Slops',
                    -- Feet = 'Sorcerer\'s Sabots',
                -- },
                -- ['Max'] = {
                    -- Ammo = 'Phtm. Tathlum',
                    -- Head = 'Wizard\'s Petasos',
                    -- Neck = 'Philomath Stole',
                    -- Ear1 = 'Moldavite Earring',
                    -- Ear2 = 'Novio Earring',
                    -- Body = 'Igqira Weskit',
                    -- Hands = 'Zenith Mitts',
                    -- Ring1 = 'Tamas Ring',
                    -- Ring2 = 'Snow Ring',
                    -- Back = 'Prism Cape',
                    -- Waist = 'Sorcerer\'s Belt',
                    -- Legs = 'Errant Slops',
                    -- Feet = 'Sorcerer\'s Sabots',
                -- },
                -- ['MAcc'] = {
                    -- Ammo = 'Phtm. Tathlum',
                    -- Head = 'Wizard\'s Petasos',
                    -- Neck = 'Elemental Torque',
                    -- Ear1 = 'Moldavite Earring',
                    -- Ear2 = 'Novio Earring',
                    -- Body = 'Igqira Weskit',
                    -- Hands = 'Wizard\'s Gloves',
                    -- Ring1 = 'Tamas Ring',
                    -- Ring2 = 'Snow Ring',
                    -- Back = 'Prism Cape',
                    -- Waist = 'Sorcerer\'s Belt',
                    -- Legs = 'Errant Slops',
                    -- Feet = 'Sorcerer\'s Sabots',
                -- },
                -- ['L65'] = {
                    -- Ammo = 'Phtm. Tathlum',
                    -- Head = 'Wizard\'s Petasos',
                    -- Neck = 'Elemental Torque',
                    -- Ear1 = 'Moldavite Earring',
                    -- Ear2 = 'Novio Earring',
                    -- Body = 'Justaucorps +1',
                    -- Hands = 'Wizard\'s Gloves',
                    -- Ring1 = 'Tamas Ring',
                    -- Ring2 = 'Genius Ring',
                    -- Back = 'Black Cape +1',
                    -- Waist = 'Penitent\'s Rope',
                    -- Legs = 'Seer\'s Slacks +1',
                    -- Feet = 'Wizard\'s Sabots',
                -- },
                -- ['L65Max'] = {
                    -- Ammo = 'Phtm. Tathlum',
                    -- Head = 'Wizard\'s Petasos',
                    -- Neck = 'Philomath Stole',
                    -- Ear1 = 'Moldavite Earring',
                    -- Ear2 = 'Phantom Earring',
                    -- Body = 'Justaucorps +1',
                    -- Hands = 'Wizard\'s Gloves',
                    -- Ring1 = 'Tamas Ring',
                    -- Ring2 = 'Genius Ring',
                    -- Back = 'Black Cape +1',
                    -- Waist = 'Penitent\'s Rope',
                    -- Legs = 'Seer\'s Slacks +1',
                    -- Feet = 'Wizard\'s Sabots',
                },
            },
        },
        -- ['VarToggles'] = {
            -- ['Burst'] = {
                -- Hands = 'Sorcerer\'s Gloves',
            -- },
            -- ['Nation'] = {
                -- Head = 'Republic Circlet',
            -- },
        -- },
        -- ['Elemental'] = {
            -- ['Day'] = {
                -- ['Fire'] = {
                    -- Legs = 'Sorcerer\'s Tonban',
                -- },
                -- ['Earth'] = {
                    -- Legs = 'Sorcerer\'s Tonban',
                -- },
                -- ['Water'] = {
                    -- Legs = 'Sorcerer\'s Tonban',
                -- },
                -- ['Wind'] = {
                    -- Legs = 'Sorcerer\'s Tonban',
                -- },
                -- ['Ice'] = {
                    -- Legs = 'Sorcerer\'s Tonban',
                -- },
                -- ['Thunder'] = {
                    -- Legs = 'Sorcerer\'s Tonban',
                -- },
                -- ['Light'] = {
                    -- Legs = 'Sorcerer\'s Tonban',
                -- },
                -- ['Dark'] = {
                    -- Legs = 'Sorcerer\'s Tonban',
                -- },
            -- },
        -- },
        -- ['Thresholds'] = {
            -- ['HPP'] = {
                -- ['SRing'] = {
                    -- threshold = 76,
                    -- operator = '<',
                    -- ['gear'] = {
                        -- ['VarToggles'] = {
                            -- ['SorcRing'] = {
                                -- Ring2 = 'Sorcerer\'s Ring',
                            -- },
                        -- },
                    -- },
                -- },
            -- },
            -- ['MppAftercast'] = {
                -- ['UNeck'] = {
                    -- threshold = 51,
                    -- operator = '<',
                    -- ['gear'] = {
                        -- ['Thresholds'] = {
                            -- ['MainJobSync'] = {
                                -- ['L70'] = {
                                    -- threshold = 70,
                                    -- operator = '>=',
                                    -- ['gear'] = {
                                        -- Neck = 'Uggalepih Pendant',
                                    -- },
                                -- },
                            -- },
                        -- },
                    -- },
                -- },
            -- },
        -- },
    -- },
    -- ['Omega'] = {
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
        -- ['Stun'] = {
            -- Feet = 'Rostrum Pumps',
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
    ['Orange Juice'] = {
        Legs = 'Dream Trousers +1',
    }
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
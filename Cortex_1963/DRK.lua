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
        Idle = 'Default',
        TP = 'Default',
        Nuke = 'Default',
        SorcRing = false,
        Nation = false,
        Weapon = 'Scythe',
        ['W.Variant'] = 'L10',
        Ranged = 'Fishing',
        ['R.Variant'] = 'Tarutaru',
        Ammo = 'Worm Lure',
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
    ['L15'] = {
        Idle = 'L15',
        TP = 'L15',
        Nuke = 'Default',
        SorcRing = false,
        Nation = false,
        Weapon = 'Club',
        ['W.Variant'] = 'L09',
        Ranged = 'Fishing',
        ['R.Variant'] = 'Tarutaru',
        Ammo = 'Worm Lure',
        Burst = false,
    },
    ['L13'] = {
        Idle = 'L13',
        TP = 'L13',
        Nuke = 'Default',
        SorcRing = false,
        Nation = false,
        Weapon = 'Scythe',
        ['W.Variant'] = 'L01',
        Ranged = 'Fishing',
        ['R.Variant'] = 'Tarutaru',
        Ammo = 'Worm Lure',
        Burst = false,
    },
}

-- Weapons
-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Scythe'] = {}
sets['Weapon']['Scythe']['L01'] = {
    Main = 'Bronze Zaghnal',
    Sub = 'Tenax Strap',
}
sets['Weapon']['Scythe']['L10'] = {
    Main = 'Brass Zaghnal +1',
    Sub = 'Tenax Strap',
}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    Main = 'Terra\'s Staff',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['L36'] = {
    Main = 'Oak Cudgel +1',
    Sub = "Centurion\'s Sword",
}
sets['Weapon']['Club']['L30'] = {
    Main = 'Ryl.Sqr. Mace',
    Sub = 'Ryl.Sqr. Mace',
}
sets['Weapon']['Club']['L27'] = {
    Main = 'Mace',
    Sub = 'Bone Cudgel',
}
sets['Weapon']['Club']['L16'] = {
    Main = 'Chestnut Club',
    Sub = "Pelte",
}
sets['Weapon']['Club']['L10'] = {
    Main = 'Freesword\'s Club',
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
        },
    },
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Worker Tunica',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Lizard Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L15'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Worker Tunica',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
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
                Body = 'Angler\'s Tunica',
                Hands = 'Angler\'s Gloves',
                Legs = 'Fisherman\'s Hose',
                Feet = 'Angler\'s Boots',
            },
            ['Working'] = {
                VarVisible = false,
                Body = 'Worker Tunica',
                Hands = 'Worker Gloves',
                Legs = 'Field Hose',
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
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Worker Tunica',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Lizard Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L15'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Worker Tunica',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
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

}

sets['MidcastIdle'] = {
    --Main = 'Terra\'s Staff',
    --Ring1 = 'San d\'Orian Ring',
    --Ring2 = 'Phalanx Ring',
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
    Ring1 = 'Tamas Ring',
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
            Head = 'Straw Hat',
            Neck = 'Silver Name Tag',
            Ear1 = 'Onyx Earring',
            Ear2 = 'Onyx Earring',
            Body = 'Worker Tunic',
            Hands = 'Worker Gloves',
            Ring1 = 'Eremite\'s Ring',
            Ring2 = 'Eremite\'s Ring',
            Back = 'Cape',
            Waist = 'Friar\'s Rope',
            Legs = 'Linen Slops',
            Feet = 'Worker Boots',
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
        Ring1 = 'Tamas Ring',
        -- Ring2 = 'Aqua Ring',
        -- Waist = 'Penitent\'s Rope',
        -- Legs = 'Errant Slops',
    },
    ['Enhancing Magic'] = {
    },
    ['Dark Magic'] = {
        -- Ammo = 'Phtm. Tathlum',
        -- Head = 'Wizard\'s Petasos',
        Head = 'Straw Hat',
        Neck = 'Silver Name Tag',
        Ear1 = 'Onyx Earring',
        Ear2 = 'Onyx Earring',
        Body = 'Worker Tunic',
        Hands = 'Worker Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eremite\'s Ring',
        Back = 'Cape',
        Waist = 'Friar\'s Rope',
        Legs = 'Linen Slops',
        Feet = 'Worker Boots',
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
                    Head = 'Straw Hat',
                    Neck = 'Silver Name Tag',
                    Ear1 = 'Onyx Earring',
                    Ear2 = 'Onyx Earring',
                    Body = 'Worker Tunic',
                    Hands = 'Worker Gloves',
                    Ring1 = 'Eremite\'s Ring',
                    Ring2 = 'Eremite\'s Ring',
                    Back = 'Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Linen Slops',
                    Feet = 'Worker Boots',
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
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
}
local WS_STR_VIT = {
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
}
sets['WeaponSkill'] = {
    ['Alpha'] = WS_STR,
    ['Calamity'] = WS_STR_VIT,
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
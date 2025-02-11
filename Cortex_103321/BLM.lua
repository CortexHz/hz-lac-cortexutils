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
        Nuke = 'Default',
        SorcRing = true,
        Nation = false,
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
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
sets['Weapon']['Club']['None'] = {}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}


-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Src. Petasos +1',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Novia Earring',
                    Ear2 = 'Novio Earring',
                    Body = 'Sorcerer\'s Coat',
                    Hands = 'Src. Gloves +1',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Hexerei Cape',
                    Waist = 'Sorcerer\'s Belt',
                    Legs = 'Src. Tonban +1',
                    Feet = 'Src. Sabots +1',
                },
                ['Defense'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Src. Petasos +1',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Novia Earring',
                    Ear2 = 'Novio Earring',
                    Body = 'Sorcerer\'s Coat',
                    Hands = 'Src. Gloves +1',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Hexerei Cape',
                    Waist = 'Sorcerer\'s Belt',
                    Legs = 'Src. Tonban +1',
                    Feet = 'Src. Sabots +1',
                },
                ['L65'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Wizard\'s Coat',
                    Hands = 'Wizard\'s Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Black Cape +1',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Wizard\'s Tonban',
                    Feet = 'Wizard\'s Sabots',
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
        Neck = 'Checkered Scarf',
        Ear1 = 'Sanative Earring',
        Ear2 = 'Relaxing Earring',
        --Body = 'Seer\'s Tunic +1',
        Body = 'Errant Hpl.',
        --Body = 'Black Cloak',
        Waist = 'Hierarch Belt',
        Legs = 'Baron\'s Slops',
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Novia Earring',
                    Ear2 = 'Novio Earring',
                    Body = 'Sorcerer\'s Coat',
                    Hands = 'Src. Gloves +1',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Hexerei Cape',
                    Waist = 'Swift Belt',
                    Legs = 'Src. Tonban +1',
                    Feet = 'Src. Sabots +1',
                },
                ['Acc'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Novia Earring',
                    Ear2 = 'Novio Earring',
                    Body = 'Sorcerer\'s Coat',
                    Hands = 'Src. Gloves +1',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Hexerei Cape',
                    Waist = 'Swift Belt',
                    Legs = 'Src. Tonban +1',
                    Feet = 'Src. Sabots +1',
                },
            },
        },
    },
    ['Omega'] = {   
    },
}

-- HandlePrecast
sets['Precast'] = {
    ['Elemental Magic'] = {
        ['VarToggles'] = {
            ['SorcRing'] = {
                ['Force'] = {
                    ['Thresholds'] = {
                        ['HPP'] = {
                            ['HPDown'] = {
                                threshold = 75,
                                operator = '>',     
                                ['gear'] = {
                                    -- put -hp gear here
                                    Head = 'Zenith Crown',
                                    Neck = 'Checkered Scarf',
                                    Ring1 = 'Ether Ring',
                                    Ring2 = 'Astral Ring',
                                    Back = 'Blue Cape +1',
                                    Waist = 'Penitent\'s Rope',
                                    Legs = 'Zenith Slacks',
                                    Feet = 'Rostrum Pumps',
                                },
                            },
                        },
                    },
                },
            },
        },
    },
    Ear2 = 'Loquac. Earring',
    Hands = 'Src. Gloves +1',
    Feet = 'Rostrum Pumps',
}

-- MidcastIdle (set to equip until just before casting)
-- i.e. SIRD ..etc
sets['MidcastIdle'] = {
    Main = 'Terra\'s Staff',
    Body = 'Igqira Weskit',
    Ring2 = 'Phalanx Ring',
    Back = 'Hexerei Cape',
    Feet = 'Wizard\'s Sabots',
}

-- HandleMidcast
local ElementalDebuff = {
    Ammo = 'Phtm. Tathlum',
    Neck = 'Elemental Torque',
    Ear1 = 'Phantom Earring',
    Ear2 = 'Phantom Earring',
    Body = 'Black Cloak',
    Hands = 'Wizard\'s Gloves',
    Ring1 = 'Tamas Ring',
    Ring2 = 'Snow Ring',
    Back = 'Prism Cape',
    Waist = 'Sorcerer\'s Belt',
    Legs = 'Mahatma Slops',
    Feet = 'Src. Sabots +1',
}
-- Hastecast
local HasteCast = {
    Ear2 = 'Loquac. Earring',
    Waist = 'Swift Belt',
    Legs = 'Nashira Seraweels',
    Feet = 'Rostrum Pumps',
}
sets['Midcast'] = {
    ['Alpha'] = {
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Ammo = 'Phtm. Tathlum',
            Head = 'Igqira Tiara',
            Neck = 'Enfeebling Torque',
            Body = 'Wizard\'s Coat',
            Hands = 'Errant Cuffs',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Snow Ring',
            Waist = 'Sorcerer\'s Belt',
            Legs = 'Nashira Seraweels',
            Feet = 'Src. Sabots +1',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Head = 'Igqira Tiara',
            Neck = 'Enfeebling Torque',
            Body = 'Wizard\'s Coat',
            Hands = 'Devotee\'s Mitts',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Aqua Ring',
            Waist = 'Penitent\'s Rope',
            Legs = 'Nashira Seraweels',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Promise Badge',
        Ear1 = 'Novia Earring',
        Body = 'Wizard\'s Coat',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Aqua Ring',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
    },
    ['Enhancing Magic'] = {
        Feet = 'Wizard\'s Sabots',
    },
    ['Dark Magic'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Dark Torque',
        Ear1 = 'Phantom Earring',
        Ear2 = 'Phantom Earring',
        Body = 'Errant Hpl.',
        Hands = 'Src. Gloves +1',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Snow Ring',
        Back = 'Prism Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Wizard\'s Tonban',
        Feet = 'Src. Sabots +1',
        ['Aspir'] = {
            Ring2 = 'Overlord\'s Ring',
        },
        ['Drain'] = {
            Ring2 = 'Overlord\'s Ring',
        },
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
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Src. Petasos +1',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Novio Earring',
                    Body = 'Igqira Weskit',
                    Hands = 'Zenith Mitts',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Snow Ring',
                    Back = 'Prism Cape',
                    Waist = 'Sorcerer\'s Belt',
                    Legs = 'Mahatma Slops',
                    Feet = 'Src. Sabots +1',
                },
                ['MAtt'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Novio Earring',
                    Body = 'Igqira Weskit',
                    Hands = 'Zenith Mitts',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Snow Ring',
                    Back = 'Prism Cape',
                    Waist = 'Sorcerer\'s Belt',
                    Legs = 'Mahatma Slops',
                    Feet = 'Src. Sabots +1',
                },
                ['Max'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Philomath Stole',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Novio Earring',
                    Body = 'Igqira Weskit',
                    Hands = 'Zenith Mitts',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Snow Ring',
                    Back = 'Prism Cape',
                    Waist = 'Sorcerer\'s Belt',
                    Legs = 'Mahatma Slops',
                    Feet = 'Src. Sabots +1',
                },
                ['MAcc'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Src. Petasos +1',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Novio Earring',
                    Body = 'Igqira Weskit',
                    Hands = 'Wizard\'s Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Snow Ring',
                    Back = 'Prism Cape',
                    Waist = 'Sorcerer\'s Belt',
                    Legs = 'Mahatma Slops',
                    Feet = 'Src. Sabots +1',
                },
                ['L65'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Novio Earring',
                    Body = 'Justaucorps +1',
                    Hands = 'Wizard\'s Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Genius Ring',
                    Back = 'Black Cape +1',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Seer\'s Slacks +1',
                    Feet = 'Wizard\'s Sabots',
                },
                ['L65Max'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Philomath Stole',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Justaucorps +1',
                    Hands = 'Wizard\'s Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Genius Ring',
                    Back = 'Black Cape +1',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Seer\'s Slacks +1',
                    Feet = 'Wizard\'s Sabots',
                },
            },
        },
        ['VarToggles'] = {
            ['Burst'] = {
                Hands = 'Src. Gloves +1',
            },
            ['Nation'] = {
                Head = 'Republic Circlet',
            },
        },
        ['Elemental'] = {
            ['Day'] = {
                ['Fire'] = {
                    Legs = 'Src. Tonban +1',
                },
                ['Earth'] = {
                    Legs = 'Src. Tonban +1',
                },
                ['Water'] = {
                    Legs = 'Src. Tonban +1',
                },
                ['Wind'] = {
                    Legs = 'Src. Tonban +1',
                },
                ['Ice'] = {
                    Legs = 'Src. Tonban +1',
                },
                ['Thunder'] = {
                    Legs = 'Src. Tonban +1',
                },
                ['Light'] = {
                    Legs = 'Src. Tonban +1',
                },
                ['Dark'] = {
                    Legs = 'Src. Tonban +1',
                },
            },
        },
        ['Thresholds'] = {
            ['HPP'] = {
                ['SRing'] = {
                    threshold = 76,
                    operator = '<',
                    ['gear'] = {
                        Ring2 = 'Sorcerer\'s Ring',
                    },
                },
            },
            ['MppAftercast'] = {
                ['UNeck'] = {
                    threshold = 51,
                    operator = '<',
                    ['gear'] = {
                        ['Thresholds'] = {
                            ['MainJobSync'] = {
                                ['L70'] = {
                                    threshold = 70,
                                    operator = '>=',
                                    ['gear'] = {
                                        Neck = 'Uggalepih Pendant',
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
    },
    ['Omega'] = {
        ['Elemental'] = {
            ['Element'] = {
                ['Fire'] = {
                    Main = 'Vulcan\'s Staff',
                },
                ['Earth'] = {
                    Main = 'Terra\'s Staff',
                },
                ['Water'] = {
                    Main = 'Neptune\'s Staff',
                },
                ['Wind'] = {
                    Main = 'Auster\'s Staff',
                },
                ['Ice'] = {
                    Main = 'Aquilo\'s Staff',
                },
                ['Thunder'] = {
                    Main = 'Jupiter\'s Staff',
                },
                ['Light'] = {
                    Main = 'Apollo\'s Staff',
                },
                ['Dark'] = {
                    Main = 'Pluto\'s Staff',
                },
            },
            ['Day'] = {
                ClashCheck = true,
                ['Fire'] = {
                    Waist = 'Karin Obi',
                },
                ['Earth'] = {
                    Waist = 'Dorin Obi',
                },
                ['Water'] = {
                    Waist = 'Suirin Obi',
                },
                ['Wind'] = {
                    Waist = 'Furin Obi',
                },
                ['Ice'] = {
                    Waist = 'Hyorin Obi',
                },
                ['Thunder'] = {
                    Waist = 'Rairin Obi',
                },
                ['Light'] = {
                    Waist = 'Korin Obi',
                },
                ['Dark'] = {
                    Waist = 'Anrin Obi',
                },
            },
            ['Weather'] = {
                ClashCheck = true,
                ['Fire'] = {
                    Waist = 'Karin Obi',
                },
                ['Earth'] = {
                    Waist = 'Dorin Obi',
                },
                ['Water'] = {
                    Waist = 'Suirin Obi',
                },
                ['Wind'] = {
                    Waist = 'Furin Obi',
                },
                ['Ice'] = {
                    Waist = 'Hyorin Obi',
                },
                ['Thunder'] = {
                    Waist = 'Rairin Obi',
                },
                ['Light'] = {
                    Waist = 'Korin Obi',
                },
                ['Dark'] = {
                    Waist = 'Anrin Obi',
                },
            },
        },
        ['Stun'] = {
            Ear2 = 'Loquac. Earring',
            Waist = 'Swift Belt',
            Feet = 'Rostrum Pumps',
        },
    },
}

-- HandlePreshot
sets['Preshot'] = {
}

-- MidshotIdle
sets['MidshotIdle'] = {
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
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
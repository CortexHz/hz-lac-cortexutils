local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Earth Staff',
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Checkered Scarf',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Phantom Earring',
        Body = 'Wizard\'s Coat',
        Hands = 'Wizard\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eremite\'s Ring +1',
        Back = 'Black Cape +1',
        Waist = 'Reverend Sash',
        Legs = 'Wizard\'s Tonban',
        Feet = 'Wizard\'s Sabots',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Defense',
        TP = 'Default',
        Nuke = 'MAtt',
        SorcRing = true,
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
        Burst = false,
    },
    ['L65'] = {
        Idle = 'L65',
        TP = 'Default',
        Nuke = 'L65',
        SorcRing = false,
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
        Burst = false,
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Scythe'] = {}
sets['Weapon']['Scythe']['Outrance'] = {
    main = 'A L\'Outrance',
}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    main = 'Earth Staff',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['None'] = {}
sets['Weapon']['Club']['Warp'] = {
    main = 'Warp Cudgel',
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Sorcerer\'s Coat',
                    Hands = 'Zenith Mitts',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Rainbow Cape',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Errant Slops',
                    Feet = 'Wizard\'s Sabots',
                },
                ['Defense'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Sorcerer\'s Coat',
                    Hands = 'Zenith Mitts',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Rainbow Cape',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Errant Slops',
                    Feet = 'Wizard\'s Sabots',
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
                Ammo = '',
                Ranged = '',
                Body = 'Angler\'s Tunica',
                Hands = 'Angler\'s Gloves',
                Legs = 'Angler\'s Hose',
                Feet = 'Waders',
            },
            ['Working'] = {
                Body = 'Worker Tunica',
                Hands = 'Worker Gloves',
                Legs = 'Worker Hose',
                Feet = 'Worker Boots',
            },
        },
        ['Movement'] = {
            --Feet = 'Waders',
            ['Thresholds'] = {
                ['Time'] = {
                    ['Dusk'] = {
                        threshold = 17,
                        operator = '>',
                        ['gear'] = {
                            --Feet = 'Seer\'s Pumps +1'
                        },
                    },
                    ['Dawn'] = {
                        threshold = 7,
                        operator = '<',
                        ['gear'] = {
                            --Feet = 'Seer\'s Pumps +1'
                        },
                    },
                },
            },
        },
    },
    ['Resting'] = {
        Main = 'Dark Staff',
        Neck = 'Checkered Scarf',
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
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Sorcerer\'s Coat',
                    Hands = 'Zenith Mitts',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Rainbow Cape',
                    Waist = 'Swift Belt',
                    Legs = 'Sorcerer\'s Tonban',
                    Feet = 'Wizard\'s Sabots',
                },
                ['Acc'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Sorcerer\'s Coat',
                    Hands = 'Zenith Mitts',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Rainbow Cape',
                    Waist = 'Swift Belt',
                    Legs = 'Sorcerer\'s Tonban',
                    Feet = 'Wizard\'s Sabots',
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
                -- put -hp gear here
            },
        },
    },
}

-- HandlePrecast
local ElementalDebuff = {
        Ammo = 'Phtm. Tathlum',
        Neck = 'Elemental Torque',
        Ear1 = 'Phantom Earring',
        Ear2 = 'Phantom Earring',
        Body = 'Black Cloak',
        Hands = 'Wizard\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Wizard\'s Sabots',
}
sets['Midcast'] = {
    ['Alpha'] = {
    },
    ['Elemental'] = {
        ['Element'] = {
            ['Fire'] = {
                Main = 'Fire Staff',
            },
            ['Earth'] = {
                Main = 'Earth Staff',
            },
            ['Water'] = {
                Main = 'Water Staff',
            },
            ['Wind'] = {
                Main = 'Wind Staff',
            },
            ['Ice'] = {
                Main = 'Aquilo\'s Staff',
            },
            ['Thunder'] = {
                Main = 'Thunder Staff',
            },
            ['Light'] = {
                Main = 'Light Staff',
            },
            ['Dark'] = {
                Main = 'Dark Staff',
            },
        },
        ['Day'] = {
            ['Fire'] = {
            },
            ['Earth'] = {
            },
            ['Water'] = {
            },
            ['Wind'] = {
            },
            ['Ice'] = {
            },
            ['Thunder'] = {
            },
            ['Light'] = {
            },
            ['Dark'] = {
            },
        },
        ['Weather'] = {
            ['Fire'] = {
            },
            ['Earth'] = {
            },
            ['Water'] = {
            },
            ['Wind'] = {
            },
            ['Ice'] = {
            },
            ['Thunder'] = {
            },
            ['Light'] = {
            },
            ['Dark'] = {
            },
        },
    },
    ['Omega'] = {
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Ammo = 'Phtm. Tathlum',
            Head = 'Igqira Tiara',
            Neck = 'Enfeebling Torque',
            Body = 'Wizard\'s Coat',
            Hands = 'Errant Cuffs',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Diamond Ring',
            Waist = 'Penitent\'s Rope',
            Legs = 'Errant Slops',
            Feet = 'Wizard\'s Sabots',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Head = 'Igqira Tiara',
            Neck = 'Enfeebling Torque',
            Body = 'Wizard\'s Coat',
            Hands = 'Devotee\'s Mitts',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Sapphire Ring',
            Waist = 'Penitent\'s Rope',
            Legs = 'Errant Slops',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
        Body = 'Wizard\'s Coat',
        Hands = 'Errant Cuffs',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Saintly Ring',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
    },
    ['Enhancing Magic'] = {
    },
    ['Dark Magic'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Checkered Scarf',
        Ear1 = 'Phantom Earring',
        Ear2 = 'Phantom Earring',
        Body = 'Errant Hpl.',
        Hands = 'Sorcerer\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Wizard\'s Tonban',
        Feet = 'Wizard\'s Sabots',
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
                ['MAtt'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Igqira Weskit',
                    Hands = 'Zenith Mitts',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Diamond Ring',
                    Back = 'Rainbow Cape',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Errant Slops',
                    Feet = 'Wizard\'s Sabots',
                },
                ['MAcc'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Igqira Weskit',
                    Hands = 'Wizard\'s Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Diamond Ring',
                    Back = 'Rainbow Cape',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Errant Slops',
                    Feet = 'Wizard\'s Sabots',
                },
                ['L65'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    Neck = 'Elemental Torque',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Justaucorps +1',
                    Hands = 'Wizard\'s Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Eremite\'s Ring +1',
                    Back = 'Black Cape +1',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Seer\'s Slacks +1',
                    Feet = 'Wizard\'s Sabots',
                },
            },
        },
        ['VarToggles'] = {
            ['Burst'] = {
                Hands = 'Sorcerer\'s Gloves',
            },
        },
        ['Elemental'] = {
            ['Day'] = {
                ['Fire'] = {
                    Legs = 'Sorcerer\'s Tonban',
                },
                ['Earth'] = {
                    Legs = 'Sorcerer\'s Tonban',
                },
                ['Water'] = {
                    Legs = 'Sorcerer\'s Tonban',
                },
                ['Wind'] = {
                    Legs = 'Sorcerer\'s Tonban',
                },
                ['Ice'] = {
                    Legs = 'Sorcerer\'s Tonban',
                },
                ['Thunder'] = {
                    Legs = 'Sorcerer\'s Tonban',
                },
                ['Light'] = {
                    Legs = 'Sorcerer\'s Tonban',
                },
                ['Dark'] = {
                    Legs = 'Sorcerer\'s Tonban',
                },
            },
        },
        ['Thresholds'] = {
            ['HPP'] = {
                ['SRing'] = {
                    threshold = 76,
                    operator = '<',
                    ['gear'] = {
                        ['VarToggles'] = {
                            ['SorcRing'] = {
                                --Ring2 = 'Sorcerer\'s Ring',
                            },
                        },
                    },
                },
            },
            ['MppAftercast'] = {
                ['UNeck'] = {
                    threshold = 51,
                    operator = '<',
                    ['gear'] = {
                        --Neck = 'Uggalepih Pendant',
                    },
                },
            },
        },
    },
}

-- HandlePrecast
sets['Preshot'] = {
}

-- HandlePrecast
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
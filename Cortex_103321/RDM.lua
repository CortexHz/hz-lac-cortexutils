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
        Nation = false,
        Idle = 'Defense',
        TP = 'Default',
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Sword'] = {}
sets['Weapon']['Sword']['Default'] = {
    Main = 'Aramis\'s Rapier',
    Sub = 'Genbu\'s Shield',
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
                ['Refresh'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Dls. Chapeau +1',
                    Neck = 'Promise Badge',
                    Ear1 = 'Novia Earring',
                    Ear2 = 'Loquac. Earring',
                    Body = 'Dls. Tabard +1',
                    Hands = 'Blood Fng. Gnt.',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Hexerei Cape',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Blood Cuisses',
                    Feet = 'Dls. Boots +1',
                },
                ['Defense'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Dls. Chapeau +1',
                    Neck = 'Promise Badge',
                    Ear1 = 'Novia Earring',
                    Ear2 = 'Loquac. Earring',
                    Body = 'Dls. Tabard +1',
                    Hands = 'Blood Fng. Gnt.',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Hexerei Cape',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Blood Cuisses',
                    Feet = 'Dls. Boots +1',
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
            Legs = 'Blood Cuisses',
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
                    Head = 'Dls. Chapeau +1',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Novia Earring',
                    Ear2 = 'Loquac. Earring',
                    Body = 'Assault Jerkin',
                    Hands = 'Blood Fng. Gnt.',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Swift Belt',
                    Legs = 'Dls. Tights +1',
                    Feet = 'Dls. Boots +1',
                },
                ['Acc'] = {
                    Head = 'Dls. Chapeau +1',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Novia Earring',
                    Ear2 = 'Loquac. Earring',
                    Body = 'Assault Jerkin',
                    Hands = 'Blood Fng. Gnt.',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Swift Belt',
                    Legs = 'Dls. Tights +1',
                    Feet = 'Dls. Boots +1',
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
        Ear2 = 'Loquac. Earring',
        Body = 'Dls. Tabard +1',
    },
}

-- HandleMidcast
local ElementalDebuff = {
    Ammo = 'Phtm. Tathlum',
    Head = 'Warlock\'s Chapeau',
    Neck = 'Elemental Torque',
    Ear1 = 'Phantom Earring',
    Ear2 = 'Phantom Earring',
    Body = 'Errant Hpl.',
    Hands = 'Errant Cuffs',
    Ring1 = 'Tamas Ring',
    Ring2 = 'Snow Ring',
    Back = 'Prism Cape',
    Waist = 'Penitent\'s Rope',
    Legs = 'Mahatma Slops',
}
-- Hastecast
local HasteCast = {
    Head = 'Warlock\'s Chapeau',
    Ear2 = 'Loquac. Earring',
    Body = 'Dls. Tabard +1',
    Waist = 'Swift Belt',
    Legs = 'Nashira Seraweels',
}
sets['Midcast'] = {
    ['Alpha'] = {
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Ammo = 'Phtm. Tathlum',
            Head = 'Dls. Chapeau +1',
            Neck = 'Enfeebling Torque',
            Ear1 = 'Phantom Earring',
            Ear2 = 'Phantom Earring',
            Body = 'Warlock\'s Tabard',
            Hands = 'Errant Cuffs',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Snow Ring',
            Back = 'Prism Cape',
            Waist = 'Penitent\'s Rope',
            Legs = 'Nashira Seraweels',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Head = 'Dls. Chapeau +1',
            Neck = 'Enfeebling Torque',
            Body = 'Warlock\'s Tabard',
            Hands = 'Devotee\'s Mitts',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Sapphire Ring',
            Back = 'Prism Cape',
            Waist = 'Friar\'s Rope',
            Legs = 'Nashira Seraweels',
            Feet = 'Dls. Boots +1',
        },
    },
    ['Healing Magic'] = {
        Head = 'Dls. Chapeau +1',
        Neck = 'Promise Badge',
        Ear1 = 'Novia Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Errant Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Prism Cape',
        Legs = 'Warlock\'s Tights',
        Feet = 'Dls. Boots +1',
    },
    ['Enhancing Magic'] = {
        Head = 'Warlock\'s Chapeau',
        Neck = 'Promise Badge',
        Ear2 = 'Loquac. Earring',
        Body = 'Dls. Tabard +1',
        Hands = 'Dls. Gloves +1',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Prism Cape',
        Legs = 'Warlock\'s Tights',
        Feet = 'Dls. Boots +1',
    },
    ['Dark Magic'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Wise Cap',
        Neck = 'Dark Torque',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Phantom Earring',
        Body = 'Errant Hpl.',
        Hands = 'Blood Fng. Gnt.',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Snow Ring',
        Back = 'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Dls. Boots +1',
        ['Aspir'] = {
            Ring2 = 'Overlord\'s Ring',
        },
        ['Drain'] = {
            Ring2 = 'Overlord\'s Ring',
        },
    },
    ['Divine Magic'] = {
        Neck = 'Promise Badge',
        Head = 'Dls. Chapeau +1',
        Body = 'Errant Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Prism Cape',
        Legs = 'Mahatma Slops',
        Feet = 'Dls. Boots +1',
    },
    ['Rasp'] = ElementalDebuff,
    ['Choke'] = ElementalDebuff,
    ['Frost'] = ElementalDebuff,
    ['Burn'] = ElementalDebuff,
    ['Drown'] = ElementalDebuff,
    ['Shock'] = ElementalDebuff,
    ['Elemental Magic'] = {
        Head = 'Warlock\'s Chapeau',
        Neck = 'Elemental Torque',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Novio Earring',
        Body = 'Errant Hpl.',
        Hands = 'Zenith Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Snow Ring',
        Back = 'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Dls. Tights +1',
        Feet = 'Dls. Boots +1',
        ['VarToggles'] = {
            ['Nation'] = {
                Head = 'Republic Circlet',
            },
        },
        ['Thresholds'] = {
            ['MppAftercast'] = {
                ['UNeck'] = {
                    threshold = 51,
                    operator = '<',
                    ['gear'] = {
                        Neck = 'Uggalepih Pendant',
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
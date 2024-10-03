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
        Back = 'Rainbow Cape',
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
                    Neck = 'Checkered Scarf',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Duelist\'s Tabard',
                    Hands = 'Duelist\'s Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Rainbow Cape',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Blood Cuisses',
                    Feet = 'Dls. Boots +1',
                },
                ['Defense'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Dls. Chapeau +1',
                    Neck = 'Checkered Scarf',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Duelist\'s Tabard',
                    Hands = 'Duelist\'s Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Rainbow Cape',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Blood Cuisses',
                    Feet = 'Dls. Boots +1',
                },
            },
        },
        ['VarToggles'] = {
            ['Fishing'] = {
                Ammo = '',
                Range = 'Lu Shang\'s F. Rod',
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
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Assault Jerkin',
                    Hands = 'Warlock\'s Gloves',
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
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Assault Jerkin',
                    Hands = 'Warlock\'s Gloves',
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
        Body = 'Duelist\'s Tabard',
    },
}

-- HandlePrecast
local ElementalDebuff = {
    Ammo = 'Phtm. Tathlum',
    Head = 'Warlock\'s Chapeau',
    Neck = 'Elemental Torque',
    Ear1 = 'Phantom Earring',
    Ear2 = 'Phantom Earring',
    Body = 'Errant Hpl.',
    Hands = 'Errant Cuffs',
    Ring1 = 'Tamas Ring',
    Ring2 = 'Diamond Ring',
    Back = 'Rainbow Cape',
    Waist = 'Penitent\'s Rope',
    Legs = 'Errant Slops',
}
-- Hastecast
local HasteCast = {
    Head = 'Warlock\'s Chapeau',
    Body = 'Duelist\'s Tabard',
    Waist = 'Swift Belt',
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
            Ring2 = 'Diamond Ring',
            Back = 'Rainbow Cape',
            Waist = 'Penitent\'s Rope',
            Legs = 'Errant Slops',
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
            Back = 'Rainbow Cape',
            Waist = 'Friar\'s Rope',
            Legs = 'Errant Slops',
            Feet = 'Dls. Boots +1',
        },
    },
    ['Healing Magic'] = {
        Head = 'Dls. Chapeau +1',
        Neck = 'Justice Badge',
        Body = 'Errant Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Rainbow Cape',
        Legs = 'Warlock\'s Tights',
        Feet = 'Dls. Boots +1',
    },
    ['Enhancing Magic'] = {
        Neck = 'Justice Badge',
        Head = 'Warlock\'s Chapeau',
        Body = 'Duelist\'s Tabard',
        Hands = 'Duelist\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Rainbow Cape',
        Legs = 'Warlock\'s Tights',
        Feet = 'Dls. Boots +1',
    },
    ['Dark Magic'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Wise Cap',
        Neck = 'Checkered Scarf',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Phantom Earring',
        Body = 'Errant Hpl.',
        Hands = 'Errant Cuffs',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Dls. Boots +1',
    },
    ['Divine Magic'] = {
        Neck = 'Justice Badge',
        Head = 'Dls. Chapeau +1',
        Body = 'Errant Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Rainbow Cape',
        Legs = 'Errant Slops',
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
        Ear2 = 'Phantom Earring',
        Body = 'Errant Hpl.',
        Hands = 'Zenith Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Dls. Tights +1',
        Feet = 'Dls. Boots +1',
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
                    Main = 'Water Staff',
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
                    Main = 'Light Staff',
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
    ['Fastblade'] = WS_STR,
}

-- HandleItem
sets['Item'] = {
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
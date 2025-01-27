--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Kunai +1',
        Head = 'Bronze Cap',
        Body = 'Kingdom Aketon',
        Hands = 'Elvaan Gloves',
        Ring1 = 'San d\'Orian Ring',
        Ring2 = 'Emperor Band',
        Legs = 'Elv. M Chausses',
        Feet = 'Elv. M Ledelsens',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Default',
        TPSwaps = false,
        Weapon = 'Katana',
        ['W.Variant'] = 'L01',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Katana'] = {}
sets['Weapon']['Katana']['L01'] = {
    Main = 'Kunai +1',
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
                    Head = 'Bronze Cap',
                    Body = 'Kingdom Aketon',
                    Hands = 'Elvaan Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Emperor Band',
                    Legs = 'Elv. M Chausses',
                    Feet = 'Leaping Boots',
                },
                ['Defense'] = {
                    Head = 'Bronze Cap',
                    Body = 'Kingdom Aketon',
                    Hands = 'Elvaan Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Emperor Band',
                    Legs = 'Elv. M Chausses',
                    Feet = 'Leaping Boots',
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
        ['VarToggles'] = {
            ['TPSwaps'] = {
                Main = 'Gelong Staff',
            },
        },
        Ear1 = 'Sanative Earring',
        Ear2 = 'Relaxing Earring',
        Legs = 'Monster Trousers',
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Head = 'Bronze Cap',
                    Body = 'Kingdom Aketon',
                    Hands = 'Elvaan Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Emperor Band',
                    Legs = 'Elv. M Chausses',
                    Feet = 'Leaping Boots',
                },
                ['Acc'] = {
                    Head = 'Bronze Cap',
                    Body = 'Kingdom Aketon',
                    Hands = 'Elvaan Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Emperor Band',
                    Legs = 'Elv. M Chausses',
                    Feet = 'Leaping Boots',
                },
            },
        },
    },
    ['Pet'] = {
        ['Sheep Song'] = {
            Head = 'Beast Helm',
        },
    },
    ['Omega'] = {   
    },
}

-- HandlePrecast
sets['Precast'] = {
    ['Alpha'] = {
    },
}

-- HandlePrecast
sets['Midcast'] = {
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Enfeebling Torque',
            Ear1 = 'Phantom Earring',
            Ear2 = 'Phantom Earring',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Snow Ring',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Enfeebling Torque',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Sapphire Ring',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Sapphire Ring',
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
    ['Charm'] = {
        Head = 'Beast Helm',
        Neck = 'Bird Whistle',
        Body = 'Beast Jackcoat',
        Hands = 'Beast Gloves',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
        Waist = 'Monster Belt',
        Legs = 'Beast Trousers',
        Feet = 'Beast Gaiters',
    },
    ['Reward'] = {
        ['Alpha'] = {
            Head = 'Bison Warbonnet',
            Neck = 'Justice Badge',
            --Body = 'Monster Jackcoat',
            --Body = 'Beast Jackcoat',
            Hands = 'Ogre Gloves',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Sapphire Ring',
            Feet = 'Beast Gaiters',
        },
    },
    ['Provoke'] = {
        Head = 'Cache-nez',
    },
}

-- HandleWeaponSkill
local WS_STR = {
    Head = 'Wyvern Helm',
    Neck = 'Spike Necklace',
    Body = 'Haubergeon',
    --Hands = 'Wonder Mitts',
    Hands = 'Ogre Gloves',
    --Ring1 = 'Courage Ring',
    --Ring2 = 'Courage Ring',
    Ring1 = 'Sun Ring',
    Ring2 = 'Sun Ring',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}
local WS_STR_DEX = {
    Head = 'Wyvern Helm',
    Neck = 'Spike Necklace',
    Body = 'Haubergeon',
    Hands = 'Beast Gloves',
    Ring1 = 'Fluorite Ring',
    Ring2 = 'Fluorite Ring',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}
local WS_STR_VIT = {
    Head = 'Wyvern Helm',
    Neck = 'Spike Necklace',
    Body = 'Haubergeon',
    Hands = 'Ogre Gloves',
    Ring1 = 'Sun Ring',
    Ring2 = 'Sun Ring',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}
local WS_HYBRID = {
    Neck = 'Spike Necklace',
    Body = 'Haubergeon',
    Hands = 'Wonder Mitts',
    Ring1 = 'Sun Ring',
    Ring2 = 'Sun Ring',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}
local WS_ELE = {
    Neck = 'Spike Necklace',
    Body = 'Haubergeon',
    Hands = 'Wonder Mitts',
    Ring1 = 'Eremite\'s Ring',
    Ring2 = 'Eremite\'s Ring',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}
sets['WeaponSkill'] = {
    ['Alpha'] = WS_STR,
    ['Calamity'] = WS_STR_VIT,
}

-- HandleItem
sets['Item'] = {
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
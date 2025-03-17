--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Martial Axe',
        Sub = 'Leopard Axe',
        Range = 'Tarutaru F. Rod',
        Ammo = 'Insect Ball',
        Head = 'Monster Helm',
        Neck = 'Temp. Torque',
        Ear1 = 'Spike Earring',
        Ear2 = 'Spike Earring',
        Body = 'Monster Jackcoat',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Swift Belt',
        Legs = 'Monster Trousers',
        Feet = 'Alumine Sollerets',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Default',
        ['R.Type'] = 'BPP',
        Weapon = 'Axe',
        ['W.Variant'] = 'L73',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Scythe'] = {}
sets['Weapon']['Scythe']['Suzaku'] = {
    Main = 'Suzaku\'s Scythe',
}
sets['Weapon']['Scythe']['Outrance'] = {
    Main = 'A L\'Outrance',
}
sets['Weapon']['Axe'] = {}
sets['Weapon']['Axe']['PetAcc'] = {
    Main = 'Maneater',
    Sub = 'Barbaroi Axe',
}
sets['Weapon']['Axe']['L73'] = {
    Main = 'Maneater',
    Sub = 'Leopard Axe',
}
sets['Weapon']['Axe']['PetAcc60'] = {
    Main = 'Darksteel Axe +1',
    Sub = 'Barbaroi Axe',
}
sets['Weapon']['Axe']['L50'] = {
    Main = 'Mythril Pick +1',
    Sub = 'Barbaroi Axe',
}
sets['Weapon']['Axe']['Shield'] = {
    Main = 'Maneater',
    Sub = 'Msk.Cmd. Shield',
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
                    Head = 'Panther Mask',
                    Neck = 'Temp. Torque',
                    Ear1 = 'Spike Earring',
                    Ear2 = 'Beastly Earring',
                    Body = 'Haubergeon',
                    Hands = 'Monster Gloves',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Swift Belt',
                    Legs = 'Monster Trousers',
                    Feet = 'Beast Gaiters',
                },
                ['Defense'] = {
                    Head = 'Panther Mask',
                    Neck = 'Temp. Torque',
                    Ear1 = 'Spike Earring',
                    Ear2 = 'Beastly Earring',
                    Body = 'Haubergeon',
                    Hands = 'Monster Gloves',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Swift Belt',
                    Legs = 'Monster Trousers',
                    Feet = 'Beast Gaiters',
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
        Ear1 = 'Sanative Earring',
        Ear2 = 'Relaxing Earring',
        Legs = 'Monster Trousers',
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Head = 'Panther Mask',
                    Neck = 'Temp. Torque',
                    Ear1 = 'Spike Earring',
                    Ear2 = 'Beastly Earring',
                    Body = 'Haubergeon',
                    Hands = 'Dusk Gloves',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Swift Belt',
                    Legs = 'Monster Trousers',
                    Feet = 'Dusk Ledelsens',
                },
                ['Acc'] = {
                    Head = 'Panther Mask',
                    Neck = 'Temp. Torque',
                    Ear1 = 'Spike Earring',
                    Ear2 = 'Beastly Earring',
                    Body = 'Haubergeon',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Swift Belt',
                    Legs = 'Monster Trousers',
                    Feet = 'Dusk Ledelsens',
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
            Ring2 = 'Aqua Ring',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Promise Badge',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Aqua Ring',
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
            Neck = 'Promise Badge',
            --Body = 'Monster Jackcoat',
            --Body = 'Beast Jackcoat',
            Hands = 'Ogre Gloves',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Aqua Ring',
            Feet = 'Beast Gaiters',
        },
        ['VarCycles'] = {
            ['R.Type'] = {
                -- Blind, Paralyzed, Poisoned
                ['BPP'] = {
                    Body = 'Beast Jackcoat',
                },
                -- Slowed, Silenced, Weighted
                ['SSW'] = {
                    Body = 'Monster Jackcoat',
                },
            },
        },
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
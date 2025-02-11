--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'War Pick +1',
        Sub = 'Warrior\'s Axe',
        Ammo = 'Pet Food Beta',
        Head = 'Centurion\'s Visor',
        Neck = 'Van Pendant',
        Ear1 = 'Dodge Earring',
        Ear2 = 'Dodge Earring',
        Body = 'Shade Harness +1',
        Hands = 'Battle Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Warrior\'s Belt +1',
        Legs = 'Republic Subligar',
        Feet = 'Leaping Boots',
    },
    ['Empty'] = {
        Main = 'Battleaxe +1',
        Sub = 'Battleaxe +1',
        Ammo = 'Pet Food Beta',
        Head = 'Shade Tiara',
        Neck = 'Van Pendant',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Shade Harness +1',
        Hands = 'Battle Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Warrior\'s Belt +1',
        Legs = 'Republic Subligar',
        Feet = 'Shade Leggings +1',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'L30',
        TP = 'L30',
        TPSwaps = false,
        ['R.Type'] = 'BPP',
        Weapon = 'Axe',
        ['W.Variant'] = 'L32',
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
sets['Weapon']['Axe']['L32'] = {
    Main = 'War Pick +1',
    Sub = 'Warrior\'s Axe',
}
sets['Weapon']['Axe']['L20'] = {
    Main = 'Battleaxe +1',
    Sub = 'Battleaxe +1',
}
sets['Weapon']['Axe']['L15'] = {
    Main = 'Republic Axe',
    Sub = 'Tropical Shield',
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
                    Head = 'Bone Mask +1',
                    Neck = 'Van Pendant',
                    Ear1 = 'Bone Earring +1',
                    Ear2 = 'Bone Earring +1',
                    Body = 'Bone Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Bone Subligar +1',
                    Feet = 'Leaping Boots',
                },
                ['L21'] = {
                    Head = 'Beetle Mask +1',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Beetle Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Bone Subligar +1',
                    Feet = 'Leaping Boots',
                },
                ['L25'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Shade Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L30'] = {
                    Head = 'Centurion\'s Visor',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Shade Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['Empty'] = {
                    Head = 'Shade Tiara',
                    Neck = 'Van Pendant',
                    Ear1 = 'Dodge Earring',
                    Ear2 = 'Dodge Earring',
                    Body = 'Shade Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Shade Leggings +1',
                },
                ['Empty2'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Van Pendant',
                    Ear1 = 'Dodge Earring',
                    Ear2 = 'Dodge Earring',
                    Body = 'Shade Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Shade Leggings +1',
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
                    Head = 'Bone Mask +1',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Bone Earring +1',
                    Ear2 = 'Bone Earring +1',
                    Body = 'Bone Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Bone Subligar +1',
                    Feet = 'Leaping Boots',
                },
                ['L21'] = {
                    Head = 'Beetle Mask +1',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Beetle Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Bone Subligar +1',
                    Feet = 'Leaping Boots',
                },
                ['L25'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Shade Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L30'] = {
                    Head = 'Centurion\'s Visor',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Shade Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['Empty'] = {
                    Head = 'Shade Tiara',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Dodge Earring',
                    Ear2 = 'Dodge Earring',
                    Body = 'Shade Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Shade Leggings +1',
                },
                ['Empty2'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Dodge Earring',
                    Ear2 = 'Dodge Earring',
                    Body = 'Shade Harness +1',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Shade Leggings +1',
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
        Neck = 'Justice Badge',
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
            Neck = 'Justice Badge',
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
    ['Provoke'] = {
        Head = 'Cache-nez',
    },
}

-- HandleWeaponSkill
local WS_STR = {
    Head = 'Mrc.Cpt. Headgear',
    Neck = 'Spike Necklace',
    Body = 'Haubergeon',
    --Hands = 'Wonder Mitts',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    -- Ring1 = 'Sun Ring',
    -- Ring2 = 'Sun Ring',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}
local WS_STR_DEX = {
    Head = 'Wyvern Helm',
    Neck = 'Spike Necklace',
    Body = 'Haubergeon',
    Hands = 'Lgn. Mittens',
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
    Hands = 'Lgn. Mittens',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}
local WS_HYBRID = {
    Neck = 'Spike Necklace',
    Body = 'Haubergeon',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Sun Ring',
    Ring2 = 'Sun Ring',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}
local WS_ELE = {
    Neck = 'Spike Necklace',
    Body = 'Haubergeon',
    Hands = 'Lgn. Mittens',
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
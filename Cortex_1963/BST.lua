--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Darksteel Axe +1',
        Sub = 'Darksteel Axe +1',
        Ammo = 'Pebble',
        Head = 'Luisant Salade',
        Neck = 'Van Pendant',
        Ear1 = 'Spike Earring',
        Ear2 = 'Spike Earring',
        Body = 'Luisant Haubert',
        Hands = 'Luisant Moufles',
        Ring1 = 'Victory Ring',
        Ring2 = 'Victory Ring',
        Back = 'Jaguar Mantle',
        Waist = 'Life Belt',
        Legs = 'Luisant Brayettes',
        Feet = 'Luisant Sollerets',
    },
    ['L25'] = {
        Main = 'Battleaxe +1',
        Sub = 'Battleaxe +1',
        Ammo = 'Herbal Broth',
        Head = 'Emperor Hairpin',
        Neck = 'Van Pendant',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Beetle Harness +1',
        Hands = 'Battle Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Jaguar Mantle',
        Waist = 'Warrior\'s Belt +1',
        Legs = 'Republic Subligar',
        Feet = 'Leaping Boots',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Acc',
        TPSwaps = false,
        ['R.Type'] = 'BPP',
        Weapon = 'Axe',
        ['W.Variant'] = 'L60',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Pebble',
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
sets['Weapon']['Axe']['L60'] = {
    Main = 'Darksteel Axe +1',
    Sub = 'Darksteel Axe +1',
}
sets['Weapon']['Axe']['PetAcc60'] = {
    Main = 'Darksteel Axe +1',
    Sub = 'Barbaroi Axe',
}
sets['Weapon']['Axe']['L50'] = {
    Main = 'Mythril Pick +1',
    Sub = 'Barbaroi Axe',
}
sets['Weapon']['Axe']['L48'] = {
    Main = 'Viking Axe',
    Sub = 'Barbaroi Axe',
}
sets['Weapon']['Axe']['L43'] = {
    Main = 'Cmb.Cst. Axe +2',
    Sub = 'Barbaroi Axe',
}
sets['Weapon']['Axe']['L40'] = {
    Main = 'Cmb.Cst. Axe',
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

sets['Ranged'] = {}
sets['Ranged']['Throwing'] = {}
sets['Ranged']['Throwing']['Pebble'] = {
    Ammo = 'Pebble',
}
sets['Ranged']['Bow'] = {}
sets['Ranged']['Bow']['Default'] = {
    Range = 'Composite Bow +1',
    ['VarCycles'] = {
        ['Ammo'] = {
            ['Scorp'] = {
                Ammo = 'Scorpion Arrow',
            },
            ['Horn'] = {
                Ammo = 'Horn Arrow',
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
                    Head = 'Luisant Salade',
                    Neck = 'Van Pendant',
                    Ear1 = 'Spike Earring',
                    Ear2 = 'Spike Earring',
                    Body = 'Haubergeon',
                    Hands = 'Luisant Moufles',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Life Belt',
                    Legs = 'Luisant Brayettes',
                    Feet = 'Luisant Sollerets',
                },
                ['L60'] = {
                    Head = 'Luisant Salade',
                    Neck = 'Van Pendant',
                    Ear1 = 'Spike Earring',
                    Ear2 = 'Spike Earring',
                    Body = 'Haubergeon',
                    Hands = 'Luisant Moufles',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Jaguar Mantle',
                    Waist = 'Life Belt',
                    Legs = 'Luisant Brayettes',
                    Feet = 'Luisant Sollerets',
                },
                ['L50'] = {
                    Head = 'Luisant Salade',
                    Neck = 'Van Pendant',
                    Ear1 = 'Tor. Earring +1',
                    Ear2 = 'Tor. Earring +1',
                    Body = 'Luisant Haubert',
                    Hands = 'Luisant Moufles',
                    Ring1 = 'Woodsman Ring',
                    Ring2 = 'Woodsman Ring',
                    Back = 'Jaguar Mantle',
                    Waist = 'Life Belt',
                    Legs = 'Luisant Brayettes',
                    Feet = 'Luisant Sollerets',
                },
                ['L40'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Kingdom Mufflers',
                    Ring1 = 'Woodsman Ring',
                    Ring2 = 'Woodsman Ring',
                    Back = 'Nomad\'s Mantle +1',
                    Waist = 'Tilt Belt',
                    Legs = 'Ryl.Sqr. Breeches',
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
                    Head = 'Luisant Salade',
                    Neck = 'Ryl.Grd. Collar',
                    Ear1 = 'Spike Earring',
                    Ear2 = 'Spike Earring',
                    Body = 'Haubergeon',
                    Hands = 'Luisant Moufles',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Quick Belt',
                    Legs = 'Luisant Brayettes',
                    Feet = 'Luisant Sollerets',
                },
                ['Acc'] = {
                    Head = 'Luisant Salade',
                    Neck = 'Ryl.Grd. Collar',
                    Ear1 = 'Spike Earring',
                    Ear2 = 'Spike Earring',
                    Body = 'Haubergeon',
                    Hands = 'Luisant Moufles',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Life Belt',
                    Legs = 'Luisant Brayettes',
                    Feet = 'Luisant Sollerets',
                },
                ['L60'] = {
                    Head = 'Luisant Salade',
                    Neck = 'Ryl.Grd. Collar',
                    Ear1 = 'Spike Earring',
                    Ear2 = 'Spike Earring',
                    Body = 'Haubergeon',
                    Hands = 'Luisant Moufles',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Jaguar Mantle',
                    Waist = 'Life Belt',
                    Legs = 'Luisant Brayettes',
                    Feet = 'Luisant Sollerets',
                },
                ['L50'] = {
                    Head = 'Luisant Salade',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Tor. Earring +1',
                    Ear2 = 'Tor. Earring +1',
                    Body = 'Luisant Haubert',
                    Hands = 'Luisant Moufles',
                    Ring1 = 'Woodsman Ring',
                    Ring2 = 'Woodsman Ring',
                    Back = 'Jaguar Mantle',
                    Waist = 'Life Belt',
                    Legs = 'Luisant Brayettes',
                    Feet = 'Luisant Sollerets',
                },
                ['L40'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Kingdom Mufflers',
                    Ring1 = 'Woodsman Ring',
                    Ring2 = 'Woodsman Ring',
                    Back = 'Nomad\'s Mantle +1',
                    Waist = 'Tilt Belt',
                    Legs = 'Ryl.Sqr. Breeches',
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

-- HandleMidcast
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
local WS_STR_L40 = {
    --Head = 'Mrc.Cpt. Headgear',
    Neck = 'Spike Necklace',
    --Body = 'Haubergeon',
    Hands = 'Ogygos\'s Brc.',
    --Hands = 'Lgn. Mittens',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    -- Ring1 = 'Sun Ring',
    -- Ring2 = 'Sun Ring',
    --Waist = 'Ryl.Kgt. Belt',
    Waist = 'Brave Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}
local WS_STR_L50 = {
    Head = 'Luisant Salade',
    Neck = 'Spike Necklace',
    Ear1 = 'Tor. Earring +1',
    Ear2 = 'Tor. Earring +1',
    Body = 'Luisant Haubert',
    Hands = 'Enkelados\'s Brc.',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Back = 'Jaguar Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Luisant Brayettes',
    Feet = 'Luisant Sollerets',
}
local WS_STR_L60 = {
    Head = 'Luisant Salade',
    Neck = 'Spike Necklace',
    Ear1 = 'Spike Earring',
    Ear2 = 'Spike Earring',
    Body = 'Luisant Haubert',
    Hands = 'Enkelados\'s Brc.',
    Ring1 = 'Victory Ring',
    Ring2 = 'Victory Ring',
    Back = 'Jaguar Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Luisant Brayettes',
    Feet = 'Luisant Sollerets',
}
local WS_STR = {
    Head = 'Luisant Salade',
    Neck = 'Spike Necklace',
    Ear1 = 'Spike Earring',
    Ear2 = 'Spike Earring',
    Body = 'Haubergeon',
    Hands = 'Enkelados\'s Brc.',
    Ring1 = 'Victory Ring',
    Ring2 = 'Victory Ring',
    Back = 'Jaguar Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Luisant Brayettes',
    Feet = 'Luisant Sollerets',
}
local WS_STR_DEX = {
    Head = 'Luisant Salade',
    Neck = 'Spike Necklace',
    Ear1 = 'Spike Earring',
    Ear2 = 'Spike Earring',
    Body = 'Luisant Haubert',
    Hands = 'Enkelados\'s Brc.',
    Ring1 = 'Victory Ring',
    Ring2 = 'Victory Ring',
    Back = 'Jaguar Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Luisant Brayettes',
    Feet = 'Luisant Sollerets',
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
    ['Omega'] = {
        ['Thresholds'] = {
            ['MainJobSync'] = {
                ['L40'] = {
                    operator = '<',
                    threshold = 50,
                    ['gear'] = WS_STR_L40,
                },
                ['L50'] = {
                    operator = '<',
                    threshold = 55,
                    ['gear'] = WS_STR_L50,
                },
            },
        },
    },
}

-- HandleItem
sets['Item'] = {
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
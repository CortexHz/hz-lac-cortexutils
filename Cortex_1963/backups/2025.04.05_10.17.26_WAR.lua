--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Legionnaire\'s Axe',
        Sub = 'Lauan Shield',
        Range = 'Lgn. Crossbow',
        Ammo = 'Crossbow Bolt',
        Head = 'Ryl.Ftm. Bandana',
        Neck = 'Spike Necklace',
        Body = 'Beetle Harness',
        Hands = 'Ryl.Ftm. Gloves',
        Ring1 = 'San d\'Orian Ring',
        Ring2 = 'Warp Ring',
        Legs = 'Ryl.Ftm. Trousers',
        Feet = 'Leaping Boots',
    },
    ['Export'] = {
        Main = 'Brass Dagger',
        Sub = 'Lauan Shield',
        Range = 'Lgn. Crossbow',
        Ammo = 'Crossbow Bolt',
        Head = 'Ryl.Ftm. Bandana',
        Body = 'Beetle Harness',
        Hands = 'Ryl.Ftm. Gloves',
        Ring1 = 'San d\'Orian Ring',
        Ring2 = 'Warp Ring',
        Back = 'Traveler\'s Mantle',
        Legs = 'Ryl.Ftm. Trousers',
        Feet = 'Leaping Boots',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Default',
        TPSwaps = false,
        Weapon = 'GreatAxe',
        ['W.Variant'] = 'L30',
        Ranged = 'XBow',
        ['R.Variant'] = 'Default',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['GreatAxe'] = {}
sets['Weapon']['GreatAxe']['L05'] = {
    Main = 'Butterfly Axe',
}
sets['Weapon']['GreatAxe']['L12'] = {
    Main = 'Greataxe',
}
sets['Weapon']['GreatAxe']['L30'] = {
    Main = 'Centurion\'s Axe',
}
sets['Weapon']['Axe'] = {}
sets['Weapon']['Axe']['L16'] = {
    Main = 'Bone Pick',
    Sub = 'Lauan Shield',
}
sets['Weapon']['Axe']['L10'] = {
    Main = 'Legionnaire\'s Axe',
    Sub = 'Lauan Shield',
}
sets['Weapon']['Polearm'] = {}
sets['Weapon']['Polearm']['L18'] = {
    Main = 'Ryl.Spr. Spear',
}
sets['Weapon']['GreatSword'] = {}
sets['Weapon']['GreatSword']['L20'] = {
    Main = 'Mrc. Greatsword',
}
sets['Weapon']['H2H'] = {}
sets['Weapon']['H2H']['L10'] = {
    Main = 'Ryl.Arc. Cesti',
}
sets['Weapon']['H2H']['L15'] = {
    Main = 'Bas. Knuckles',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['None'] = {}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['None'] = {}
sets['Weapon']['Staff']['Warp'] = {
    Main = 'Kgd. Signet Staff',
}

sets['Ranged'] = {}
sets['Ranged']['Throwing'] = {}
sets['Ranged']['Throwing']['Pebble'] = {
    Ammo = 'Pebble',
}
sets['Ranged']['XBow'] = {}
sets['Ranged']['XBow']['Default'] = {
    Range = 'Lgn. Crossbow',
    ['VarCycles'] = {
        ['Ammo'] = {
            ['Bolt'] = {
                Ammo = 'Crossbow Bolt',
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
                    Neck = 'Spike Necklace',
                    Body = 'Beetle Harness',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Amethyst Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['Defense'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Spike Necklace',
                    Body = 'Beetle Harness',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Amethyst Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Ftm. Trousers',
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
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Spike Necklace',
                    Body = 'Beetle Harness',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Amethyst Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['Defense'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Spike Necklace',
                    Body = 'Beetle Harness',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Amethyst Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Ryl.Ftm. Trousers',
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
        },
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
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
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
        Neck = 'Bird Whistle',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
    },
    ['Reward'] = {
        Neck = 'Justice Badge',
    },
    ['Provoke'] = {
        Head = 'Cache-nez',
    },
}

-- HandleWeaponSkill
local WS_STR = {
    Neck = 'Spike Necklace',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Waist = 'Brave Belt',
    Legs = 'Republic Subligar',
}
local WS_STR_VIT = {
    Neck = 'Spike Necklace',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Waist = 'Brave Belt',
    Legs = 'Republic Subligar',
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
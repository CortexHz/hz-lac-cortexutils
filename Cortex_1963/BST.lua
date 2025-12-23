--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Legionnaire\'s Axe',
        Sub = 'Lauan Shield',
        Ammo = 'Pet Food Alpha',
        Head = 'Ryl.Ftm. Bandana',
        Neck = 'Justice Badge',
        Body = 'Ryl.Ftm. Vest',
        Hands = 'Guerilla Gloves',
        Ring1 = { Name = 'San d\'Orian Ring', Augment = { [1] = 'STR+5', [2] = 'Accuracy+3' } },
        Ring2 = { Name = 'Balance Ring', Augment = 'DEX+5' },
        Back = { Name = 'Traveler\'s Mantle', Augment = { [1] = 'STR+5', [2] = 'Evasion+1' } },
        Legs = 'Brass Subligar',
        Feet = { Name = 'Leaping Boots', Augment = { [1] = 'Accuracy+3', [2] = 'DEX+5' } },
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
        TP = 'Default',
        TPSwaps = false,
        --['R.Type'] = 'BPP',
        Weapon = 'Axe',
        ['W.Variant'] = 'L56',
        Ranged = 'Throwing',
        ['R.Variant'] = 'None',
        Ammo = 'Worm Lure',
        TPSwaps = true,
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
sets['Weapon']['Axe']['L56'] = {
    Main = 'Darksteel Axe',
    Sub = 'Mythril Pick +1',
}
sets['Weapon']['Axe']['L50'] = {
    Main = 'Mythril Pick +1',
    Sub = 'Cmb.Cst. Axe',
}
sets['Weapon']['Axe']['L40'] = {
    Main = 'Cmb.Cst. Axe',
    Sub = 'Cmb.Cst. Axe',
}
sets['Weapon']['Axe']['L32'] = {
    Main = 'Warrior\'s Axe',
    Sub = 'Warrior\'s Axe',
}
sets['Weapon']['Axe']['L26'] = {
    Main = 'Tigerhunter',
    Sub = 'Tigerhunter',
}
sets['Weapon']['Axe']['L20'] = {
    Main = 'Battleaxe',
    Sub = 'Battleaxe',
}
sets['Weapon']['Axe']['L16'] = {
    Main = 'Bone Pick',
    Sub = 'Lauan Shield',
}
sets['Weapon']['Axe']['L10'] = {
    Main = 'Legionnaire\'s Axe',
    Sub = 'Lauan Shield',
}
sets['Weapon']['Axe']['L01'] = {
    Main = 'Bronze Axe',
    Sub = 'Lauan Shield',
}
sets['Weapon']['H2H'] = {}
sets['Weapon']['H2H']['L15'] = {
    Main = 'Bas. Knuckles',
}
sets['Weapon']['H2H']['L10'] = {
    Main = 'Ryl.Arc. Cesti',
}
sets['Weapon']['H2H']['L01'] = {
    Main = 'Cesti',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['None'] = {}
sets['Weapon']['Club']['L16'] = {
    Main = 'Chestnut Club',
    Sub = 'Maple Shield',
}
sets['Weapon']['Club']['L10'] = {
    Main = 'Freesword\'s Club',
    Sub = 'Maple Shield',
}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}

sets['Ranged'] = {}
sets['Ranged']['Throwing'] = {}
sets['Ranged']['Throwing']['None'] = {}
sets['Ranged']['Throwing']['Pebble'] = {
    Ammo = 'Pebble',
}
sets['Ranged']['Throwing']['Dart'] = {
    Ammo = 'Dart',
}
sets['Ranged']['Throwing']['Hawkeye'] = {
    Ammo = 'Hawkeye',
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
sets['Ranged']['Fishing'] = {}
sets['Ranged']['Fishing']['LuShangs'] = {
    Range = 'Lu Shang\'s F. Rod',
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
            ['Shrimp Lure'] = {
                Ammo = 'Shrimp Lure',
            },
            ['Minnow'] = {
                Ammo = 'Minnow',
            },
            ['S.Minnow'] = {
                Ammo = 'Sinking Minnow',
            },
        },
    },
}
sets['Ranged']['Fishing']['Tarutaru'] = {
    Range = 'Tarutaru F. Rod',
    ['VarCycles'] = {
        ['Ammo'] = {
            ['Insect Ball'] = {
                Ammo = 'Insect Ball',
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
            ['Worm Lure'] = {
                Ammo = 'Worm Lure',
            },
            ['Shrimp Lure'] = {
                Ammo = 'Shrimp Lure',
            },
            ['Minnow'] = {
                Ammo = 'Minnow',
            },
            ['S.Minnow'] = {
                Ammo = 'Sinking Minnow',
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
                    Head = 'Patroclus\'s Helm',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Haubergeon',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['Defense'] = {
                    Head = 'Patroclus\'s Helm',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Haubergeon',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L55'] = {
                    Head = 'Walkure Mask',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Scorpion Harness',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Speed Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L50'] = {
                    Head = 'Walkure Mask',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Life Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L40'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L30'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ctr. Scale Mail',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L25'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Chainmail',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L21'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Beetle Harness',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L15'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Worker Tunica',
                    Hands = 'Battle Gloves',
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
                    Head = 'Patroclus\'s Helm',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Haubergeon',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['Acc'] = {
                    Head = 'Patroclus\'s Helm',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Haubergeon',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['Eva'] = {
                    Head = 'Walkure Mask',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Scorpion Harness',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L55'] = {
                    Head = 'Walkure Mask',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Scorpion Harness',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Speed Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L50'] = {
                    Head = 'Walkure Mask',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Life Belt',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L40'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L30'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ctr. Scale Mail',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L25'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Chainmail',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L21'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Beetle Harness',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L15'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Worker Tunica',
                    Hands = 'Battle Gloves',
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
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Brass Subligar',
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
        --Head = 'Beast Helm',
        Neck = 'Bird Whistle',
        --Body = 'Beast Jackcoat',
        --Hands = 'Beast Gloves',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
        --Waist = 'Monster Belt',
        --Legs = 'Beast Trousers',
        --Feet = 'Beast Gaiters',
    },
    ['Reward'] = {
        ['Alpha'] = {
            --Head = 'Bison Warbonnet',
            Neck = 'Justice Badge',
            --Body = 'Monster Jackcoat',
            --Body = 'Beast Jackcoat',
            --Hands = 'Ogre Gloves',
            --Feet = 'Beast Gaiters',
        },
        --['VarCycles'] = {
        --    ['R.Type'] = {
        --        -- Blind, Paralyzed, Poisoned
        --        ['BPP'] = {
        --            Body = 'Beast Jackcoat',
        --        },
        --        -- Slowed, Silenced, Weighted
        --        ['SSW'] = {
        --            Body = 'Monster Jackcoat',
        --        },
        --    },
        --},
    },
    ['Provoke'] = {
        Head = 'Cache-nez',
    },
}

-- HandleWeaponSkill
local WS_STR_LT60 = {
    Head = 'Walkure Mask',
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Ring1 = 'Courage Ring',
    Ring2 = 'Rajas Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Angler\'s Boots',
}
local WS_STR_VIT_LT60 = {
    Head = 'Walkure Mask',
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Courage Ring',
    Ring2 = 'Rajas Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Angler\'s Boots',
}
local WS_STR = {
    Head = 'Walkure Mask',
    Neck = 'Fotia Gorget',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Brutal Earring',
    Body = 'Haubergeon',
    Hands = 'Alkyoneus\'s Brc.',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Warwolf Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Angler\'s Boots',
}
local WS_STR_VIT = {
    Head = 'Genbu\'s Kabuto',
    Neck = 'Fotia Gorget',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Brutal Earring',
    Body = 'Haubergeon',
    Hands = 'Alkyoneus\'s Brc.',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Warwolf Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Angler\'s Boots',
}
sets['WeaponSkill'] = {
    ['Thresholds'] = {
        ['MainJobSync'] = {
            ['LE60'] = {
                threshold = 60,
                operator = '<=',
                ['gear'] = {
                    ['Alpha'] = WS_STR_LT60,
                    ['Calamity'] = WS_STR_VIT_LT60,
                },
            },
            ['GT60'] = {
                threshold = 60,
                operator = '>',
                ['gear'] = {
                    ['Alpha'] = WS_STR,
                    ['Calamity'] = WS_STR_VIT,
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
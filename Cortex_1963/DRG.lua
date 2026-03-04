--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Gigant Axe',
        Sub = 'Tenax Strap',
        Range = 'Lgn. Crossbow',
        Ammo = 'Crossbow Bolt',
        Head = 'Emperor Hairpin',
        Neck = 'Spike Necklace',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Ryl.Sqr. Chainmail',
        Hands = 'Ryl.Kgt. Mufflers',
        Ring1 = 'San d\'Orian Ring',
        Ring2 = 'Balance Ring',
        Back = 'Ram Mantle +1',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Ryl.Sqr. Breeches',
        Feet = 'Leaping Boots',
    },
    ['Export'] = {
        Main = 'Brass Dagger',
        Sub = 'Lauan Shield',
        Range = 'Lgn. Crossbow',
        Ammo = 'Crossbow Bolt',
        Head = 'Ryl. Squire\'s Helm',
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
        Weapon = 'Polearm',
        ['W.Variant'] = 'L60',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Pebble',
    },
    ['L50'] = {
        Idle = 'L50',
        TP = 'L50',
        TPSwaps = false,
        Weapon = 'Polearm',
        ['W.Variant'] = 'L50',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Pebble',
    },
    ['L34'] = {
        Idle = 'L34',
        TP = 'L34',
        TPSwaps = false,
        Weapon = 'Polearm',
        ['W.Variant'] = 'L30',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Pebble',
    },
    ['L30'] = {
        Idle = 'L30',
        TP = 'L30',
        TPSwaps = false,
        Weapon = 'Polearm',
        ['W.Variant'] = 'L30',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Pebble',
    },
    ['L21'] = {
        Idle = 'L21',
        TP = 'L21',
        TPSwaps = false,
        Weapon = 'Polearm',
        ['W.Variant'] = 'L12',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Pebble',
    },
    ['L15'] = {
        Idle = 'L15',
        TP = 'L15',
        TPSwaps = false,
        Weapon = 'Polearm',
        ['W.Variant'] = 'L12',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Pebble',
    },
    ['L13'] = {
        Idle = 'L13',
        TP = 'L13',
        TPSwaps = false,
        Weapon = 'Polearm',
        ['W.Variant'] = 'L12',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Pebble',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Polearm'] = {}
sets['Weapon']['Polearm']['L65'] = {
    Main = 'Golden Spear',
    Sub = 'Pole Grip',
}
sets['Weapon']['Polearm']['L60'] = {
    Main = 'Couse',
    Sub = 'Pole Grip',
}
sets['Weapon']['Polearm']['L53'] = {
    Main = 'Thundercloud',
    Sub = 'Tenax Strap',
}
sets['Weapon']['Polearm']['L49'] = {
    Main = 'Wind Spear',
    Sub = 'Tenax Strap',
}
sets['Weapon']['Polearm']['L30'] = {
    Main = 'Ryl.Sqr. Halberd',
    Sub = 'Tenax Strap',
}
sets['Weapon']['Polearm']['L18'] = {
    Main = 'Ryl.Spr. Spear',
    Sub = 'Tenax Strap',
}
sets['Weapon']['Polearm']['L07'] = {
    Main = 'Bronze Spear',
    Sub = 'Tenax Strap',
}
sets['Weapon']['Polearm']['L01'] = {
    Main = 'Harpoon',
}

sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['None'] = {}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}
sets['Weapon']['Club']['L16'] = {
    Main = 'Chestnut Club',
    Sub = 'Maple Shield',
}
sets['Weapon']['Club']['L10'] = {
    Main = 'Freesword\'s Club',
    Sub = 'Maple Shield',
}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['None'] = {}
sets['Weapon']['Staff']['Signet'] = {
    Main = 'Kgd. Signet Staff',
}

sets['Ranged'] = {}
sets['Ranged']['Throwing'] = {}
sets['Ranged']['Throwing']['Pebble'] = {
    Ammo = 'Pebble',
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
                    Ear1 = 'Suppanomimi',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Haubergeon',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Fighter\'s Calligae',
                },
                ['Defense'] = {
                    Head = 'Patroclus\'s Helm',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Kgt. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Fighter\'s Calligae',
                },
                ['L55'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Kgt. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Fighter\'s Calligae',
                },
                ['L50'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L40'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L34'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ctr. Scale Mail',
                    Hands = 'Ryl.Sqr. Mufflers',
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
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'Rajas Ring',
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
                    Hands = 'Guerilla Gloves',
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
                    Hands = 'Guerilla Gloves',
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
                    Ring2 = 'Bastokan Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
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
                Feet = 'Waders',
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
                    Ear1 = 'Suppanomimi',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Haubergeon',
                    Hands = 'Dusk Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Fighter\'s Calligae',
                },
                ['L55'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Kgt. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Speed Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Fighter\'s Calligae',
                },
                ['L50'] = {
                    Head = 'Emperor Hairpin',
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
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L34'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ctr. Scale Mail',
                    Hands = 'Ryl.Sqr. Mufflers',
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
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'Rajas Ring',
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
                    Hands = 'Guerilla Gloves',
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
                    Hands = 'Guerilla Gloves',
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
                    Ring2 = 'Bastokan Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Brass Subligar',
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
            ['ExpRing'] = {
                VarVisible = false,
                Ring2 = 'Empress Band',
            },
            ['Sneak'] = {
                VarVisible = false,
                Feet = 'Dream Boots +1',
            },
            ['JellyRing'] = {
                VarVisible = false,
                Ring1 = 'Jelly Ring',
            },
            ['BQRing'] = {
                VarVisible = false,
                Ring1 = 'Bomb Queen Ring',
            },
            ['Trials'] = {
                Main = 'Sapara of Trials',
            }
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
-- HandleWeaponSkill
local WS_STR_LT60 = {
    Head = 'Ryl.Kgt. Bascinet',
    Neck = 'Fotia Gorget',
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Angler\'s Boots',
}
local WS_STR_MND_LT60 = {
    Head = 'Ryl.Kgt. Bascinet',
    Neck = 'Fotia Gorget',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Angler\'s Boots',
}
local WS_STR = {
    Head = 'Hecatomb Cap',
    Neck = 'Fotia Gorget',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Brutal Earring',
    Body = 'Haubergeon',
    Hands = 'Alkyoneus\'s Brc.',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Warwolf Belt',
    Legs = 'Valor Breeches',
}
local WS_STR_MND = {
    Head = 'Hecatomb Cap',
    Neck = 'Fotia Gorget',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Brutal Earring',
    Body = 'Haubergeon',
    Hands = 'Alkyoneus\'s Brc.',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Warwolf Belt',
    Legs = 'Valor Breeches',
}
sets['WeaponSkill'] = {
    ['Thresholds'] = {
        ['MainJobSync'] = {
            ['LE60'] = {
                threshold = 60,
                operator = '<=',
                ['gear'] = {
                    ['Alpha'] = WS_STR_LT60,
                    ['Moonlight'] = WS_STR_MND_LT60,
                    ['Seraph Strike'] = WS_STR_MND_LT60,
                },
            },
            ['GT60'] = {
                threshold = 60,
                operator = '>',
                ['gear'] = {
                    ['Alpha'] = WS_STR,
                    ['Moonlight'] = sets['Default'],
                    ['Seraph Strike'] = WS_STR_MND,
                    ['Knights of Round'] = WS_STR_MND,
                    ['Spirits Within'] = sets['Default'],
                },
            },
        },
    },
}


-- HandleItem
sets['Item'] = {
    ['Orange Juice'] = {
        Legs = 'Dream Trousers +1',
    },
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
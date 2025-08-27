--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Wakizashi',
        Sub = 'Wakizashi',
        Head = 'Ryl.Ftm. Bandana',
        Neck = 'Justice Badge',
        Body = 'Ryl.Ftm. Vest',
        Hands = 'Lgn. Mittens',
        Ring1 = { Name = 'San d\'Orian Ring', Augment = { [1] = 'STR+5', [2] = 'Accuracy+3' } },
        Ring2 = 'Warp Ring',
        Legs = 'Sitabaki',
        Feet = { Name = 'Leaping Boots', Augment = { [1] = 'Accuracy+3', [2] = 'DEX+5' } },
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
        Weapon = 'Katana',
        ['W.Variant'] = 'L26',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Shuriken',
    },
    ['L24'] = {
        Idle = 'L24',
        TP = 'L24',
        TPSwaps = false,
        Weapon = 'Katana',
        ['W.Variant'] = 'L24',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Shuriken',
    },
    ['L21'] = {
        Idle = 'L21',
        TP = 'L21',
        TPSwaps = false,
        Weapon = 'Katana',
        ['W.Variant'] = 'L19',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Shuriken',
    },
    ['L19'] = {
        Idle = 'L17',
        TP = 'L17',
        TPSwaps = false,
        Weapon = 'Katana',
        ['W.Variant'] = 'L19',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Shuriken',
    },
    ['L15'] = {
        Idle = 'L15',
        TP = 'L15',
        TPSwaps = false,
        Weapon = 'Katana',
        ['W.Variant'] = 'L13',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Shuriken',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Katana'] = {}
sets['Weapon']['Katana']['L26'] = {
    Main = 'Busuto',
    Sub = 'Busuto',
}
sets['Weapon']['Katana']['L24'] = {
    Main = 'Hibari',
    Sub = 'Hibari',
}
sets['Weapon']['Katana']['L19'] = {
    Main = 'Suzume',
    Sub = 'Suzume',
}
sets['Weapon']['Katana']['L13'] = {
    Main = 'Shinobi-Gatana',
    Sub = 'Shinobi-Gatana',
}
sets['Weapon']['Katana']['L07'] = {
    Main = 'Wakizashi',
    Sub = 'Wakizashi',
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
sets['Weapon']['Club']['L19'] = {
    Main = 'Chestnut Club',
    Sub = 'Suzume',
}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['None'] = {}
sets['Weapon']['Staff']['Signet'] = {
    Main = 'Kgd. Signet Staff',
}

sets['Ranged'] = {}
sets['Ranged']['Throwing'] = {}
sets['Ranged']['Throwing']['Shuriken'] = {
    Ammo = 'Shuriken',
}
sets['Ranged']['Throwing']['Pebble'] = {
    Ammo = 'Pebble',
}
sets['Ranged']['Throwing']['Dart'] = {
    Ammo = 'Dart',
}
sets['Ranged']['Throwing']['Hawkeye'] = {
    Ammo = 'Hawkeye',
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
                    Head = 'Emperor Hairpin',
                    Neck = 'Van Pendant',
                    Body = 'Chainmail',
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L24'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Van Pendant',
                    Body = 'Chainmail',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L21'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Beetle Harness',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L17'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Worker Tunica',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Lizard Trousers',
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
                ['L10'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Lgn. Mittens',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Warp Ring',
                    Legs = 'Sitabaki',
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
                Hands = 'Field Gloves',
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
        --['VarToggles'] = {
        --    ['TPSwaps'] = {
        --        Main = 'Gelong Staff',
        --    },
        --},
        --Ear1 = 'Sanative Earring',
        --Ear2 = 'Relaxing Earring',
        --Legs = 'Monster Trousers',
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Body = 'Chainmail',
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L24'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Body = 'Chainmail',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L21'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Beetle Harness',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Ftm. Trousers',
                    Feet = 'Leaping Boots',
                },
                ['L17'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Worker Tunica',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Lizard Trousers',
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
                ['L10'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Lgn. Mittens',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Warp Ring',
                    Legs = 'Sitabaki',
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
        },
    },
}

-- HandlePrecast
sets['Precast'] = {
    ['Alpha'] = {
    },
}

-- HandleMidcastIdle
sets['MidcastIdle'] = {
    ['Alpha'] = sets['Default']['Idle']
}

-- HandleMidcast
local NinNuke = {
    Ring1 = 'Eremite\'s Ring',
    Ring2 = 'Eremite\'s Ring',
}
sets['Midcast'] = {
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Ring1 = 'Eremite\'s Ring',
            Ring2 = 'Eremite\'s Ring',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Justice Badge',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
    },
    ['Utsesumi: Ichi'] = {
        Ring1 = 'San d\'Orian Ring',
    },
    ['Utsesumi: Ni'] = {
        Ring1 = 'San d\'Orian Ring',
    },
    ['Ninjutsu'] = {
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
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
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Brave Belt',
    Legs = 'Republic Subligar',
    Feet = 'Leaping Boots',
}
local WS_STR_VIT = {
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Brave Belt',
    Legs = 'Republic Subligar',
    Feet = 'Leaping Boots',
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
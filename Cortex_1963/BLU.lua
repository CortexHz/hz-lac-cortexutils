--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Shellbuster',
        Sub = 'Msk.Cmd. Falchion',
        Range = 'Rogetsurin',
        Head = { Name = 'Emperor Hairpin', Augment = { [1] = 'Accuracy+3', [2] = 'DEX+5' } },
        Neck = { Name = 'Spike Necklace', Augment = { [1] = 'STR+5', [2] = 'Accuracy+3' } },
        Ear1 = { Name = 'Beetle Earring +1', Augment = 'STR+5' },
        Ear2 = { Name = 'Beetle Earring +1', Augment = 'STR+5' },
        Body = 'Ryl.Kgt. Aketon',
        Hands = 'Battle Gloves',
        Ring1 = { Name = 'Rajas Ring', Augment = { [1] = 'STR+5', [2] = 'Accuracy+3' } },
        Ring2 = { Name = 'Balance Ring', Augment = 'DEX+5' },
        Back = { Name = 'Traveler\'s Mantle', Augment = { [1] = 'STR+5', [2] = 'Evasion+3' } },
        Waist = 'Warrior\'s Belt',
        Legs = 'Republic Subligar',
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
        Weapon = 'Club',
        ['W.Variant'] = 'L55',
        Ranged = 'Throwing',
        ['R.Variant'] = 'L15',
        Refresh = true,
    },
    ['L55'] = {
        Idle = 'L55',
        TP = 'L55',
        TPSwaps = false,
        Weapon = 'Club',
        ['W.Variant'] = 'L55',
        Ranged = 'Throwing',
        ['R.Variant'] = 'L15',
        Refresh = false,
    },
    ['L30'] = {
        Idle = 'L30',
        TP = 'L30',
        TPSwaps = false,
        Weapon = 'Club',
        ['W.Variant'] = 'L130',
        Ranged = 'Throwing',
        ['R.Variant'] = 'L15',
        Refresh = false,
    },
    ['L25'] = {
        Idle = 'L25',
        TP = 'L25',
        TPSwaps = false,
        Weapon = 'Club',
        ['W.Variant'] = 'L18',
        Ranged = 'Throwing',
        ['R.Variant'] = 'L15',
        Refresh = false,
    },
    ['L21'] = {
        Idle = 'L21',
        TP = 'L21',
        TPSwaps = false,
        Weapon = 'Club',
        ['W.Variant'] = 'L18',
        Ranged = 'Throwing',
        ['R.Variant'] = 'L15',
        Refresh = false,
    },
    ['L15'] = {
        Idle = 'L15',
        TP = 'L15',
        TPSwaps = false,
        Weapon = 'Club',
        ['W.Variant'] = 'L10',
        Ranged = 'Throwing',
        ['R.Variant'] = 'L15',
        Refresh = false,
    },
    ['L12'] = {
        Idle = 'L13',
        TP = 'L13',
        TPSwaps = false,
        Weapon = 'Club',
        ['W.Variant'] = 'L10',
        Ranged = 'Throwing',
        ['R.Variant'] = 'None',
        Refresh = false,
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Sword'] = {}
sets['Weapon']['Sword']['SL55'] = {
    Main = 'Msk.Cmd. Falchion',
    Sub = "Pelte",
}
sets['Weapon']['Sword']['L55'] = {
    Main = 'Msk.Cmd. Falchion',
    Sub = 'Immortal\'s Scimitar',
}
sets['Weapon']['Sword']['L40'] = {
    Main = 'Cmb.Cst. Scimitar',
    Sub = 'Immortal\'s Scimitar',
}
sets['Weapon']['Sword']['L30'] = {
    Main = 'Centurion\'s Sword',
    Sub = "Centurion\'s Sword",
}
sets['Weapon']['Sword']['L20'] = {
    Main = 'Iron Sword',
    Sub = "Iron Sword",
}
sets['Weapon']['Sword']['L18'] = {
    Main = 'Iron Sword',
    Sub = "Pelte",
}
sets['Weapon']['Sword']['L13'] = {
    Main = 'Brass Xiphos',
    Sub = "Pelte",
}
sets['Weapon']['Sword']['L10'] = {
    Main = 'Ryl.Arc. Sword',
    Sub = "Pelte",
}
sets['Weapon']['Sword']['L01'] = {
    Main = 'Bronze Sword',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['L55'] = {
    Main = 'Shellbuster',
    Sub = 'Msk.Cmd. Falchion',
}
sets['Weapon']['Club']['L48'] = {
    Main = 'Shellbuster',
    Sub = 'Cmb.Cst. Scimitar',
}
sets['Weapon']['Club']['SL48'] = {
    Main = 'Shellbuster',
    Sub = "Pelte",
}
sets['Weapon']['Club']['L40'] = {
    Main = 'Oak Cudgel +1',
    Sub = 'Cmb.Cst. Scimitar',
}
sets['Weapon']['Club']['L36'] = {
    Main = 'Oak Cudgel +1',
    Sub = "Centurion\'s Sword",
}
sets['Weapon']['Club']['L30'] = {
    Main = 'Bone Cudgel',
    Sub = "Centurion\'s Sword",
}
sets['Weapon']['Club']['L27'] = {
    Main = 'Bone Cudgel',
    Sub = "Iron Sword",
}
sets['Weapon']['Club']['L18'] = {
    Main = 'Chestnut Club',
    Sub = "Iron Sword",
}
sets['Weapon']['Club']['L16'] = {
    Main = 'Chestnut Club',
    Sub = "Pelte",
}
sets['Weapon']['Club']['L10'] = {
    Main = 'Freesword\'s Club',
    Sub = "Pelte",
}
sets['Weapon']['Club']['L09'] = {
    Main = 'Willow Wand',
    Sub = "Pelte",
}
sets['Weapon']['Club']['L01'] = {
    Main = 'Maple Wand',
}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['None'] = {}
sets['Weapon']['Staff']['Signet'] = {
    Main = 'Kgd. Signet Staff',
}

sets['Ranged'] = {}
sets['Ranged']['Throwing'] = {}
sets['Ranged']['Throwing']['None'] = {}
sets['Ranged']['Throwing']['L15'] = {
    Range = 'Rogetsurin',
}

sets['Ranged']['Fishing'] = {}
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
        },
    },
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Head = 'Magus Keffiyeh',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Magus Jubbah',
                    Hands = 'Magus Bazubands',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Magus Shalwar',
                    Feet = 'Magus Charuqs',
                },
                ['L60'] = {
                    Head = 'Magus Keffiyeh',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Magus Jubbah',
                    Hands = 'Magus Bazubands',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Speed Belt',
                    Legs = 'Magus Shalwar',
                    Feet = 'Magus Charuqs',
                },
                ['L55'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Kgt. Aketon',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Speed Belt',
                    Legs = 'Magus Shalwar',
                    Feet = 'Magus Charuqs',
                },
                ['L50'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Robe',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Life Belt',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L40'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Robe',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
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
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L25'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Beetle Harness',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
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
                    Waist = 'Warrior\'s Belt',
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
                    Waist = 'Warrior\'s Belt',
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
                ['L12'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Lgn. Mittens',
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
                Body = 'Fsh. Tunica',
                Hands = 'Fsh. Gloves',
                Legs = 'Fisherman\'s Hose',
                Feet = 'Angler\'s Boots',
            },
            ['Working'] = {
                VarVisible = false,
                Body = 'Worker Tunica',
                Hands = 'Field Gloves',
                Legs = 'Field Hose',
                Feet = 'Worker Boots',
            },
            ['Refresh'] = {
                VarVisible = true,
                Head = '',
                Body = 'Vermillion Cloak',
            }
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
        Ear2 = 'Boroka Earring',
        -- Body = 'Errant Hpl.',
        Head = '',
        Body = 'Vermillion Cloak',
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Head = 'Magus Keffiyeh',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Magus Jubbah',
                    Hands = 'Magus Bazubands',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Magus Shalwar',
                    Feet = 'Magus Charuqs',
                },
                ['DD'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Scorpion Harness',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Magus Shalwar',
                    Feet = 'Leaping Boots',
                },
                ['L60'] = {
                    Head = 'Magus Keffiyeh',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Magus Jubbah',
                    Hands = 'Magus Bazubands',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Speed Belt',
                    Legs = 'Magus Shalwar',
                    Feet = 'Magus Charuqs',
                },
                ['L55'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Kgt. Aketon',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Speed Belt',
                    Legs = 'Magus Shalwar',
                    Feet = 'Leaping Boots',
                },
                ['L50'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Robe',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Life Belt',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L40'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Robe',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
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
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Republic Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L25'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Beetle Harness',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
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
                    Waist = 'Warrior\'s Belt',
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
                    Waist = 'Warrior\'s Belt',
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
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Brass Subligar',
                    Feet = 'Leaping Boots',                    
                },
                ['L12'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Justice Badge',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Lgn. Mittens',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Legs = 'Brass Subligar',
                    Feet = 'Leaping Boots',
                },
            },
        },
        ['VarToggles'] = {
            ['BRefresh'] = {
                VarVisible = false,
                Head = '',
                Body = 'Vermillion Cloak',
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

-- HandlePrecast
-- - BLU sets
local BluMids = {}
BluMids['Physical'] = {}
BluMids['Physical']['CHR'] = {
    Head = 'Noble\'s Ribbon',
    Neck = 'Bird Whistle',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Hope Ring',
    Ring2 = 'Hope Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Corsette +1',
    Legs = 'Republic Subligar',
    Feet = 'Leaping Boots',
}
BluMids['Physical']['STR'] = {
    Head = 'Emperor Hairpin',
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Republic Subligar',
    Feet = 'Leaping Boots',
}
BluMids['Physical']['STRMND'] = {
    Head = 'Emperor Hairpin',
    Neck = 'Justice Badge',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Republic Subligar',
    Feet = 'Leaping Boots',
}
BluMids['Magical'] = {}
BluMids['Magical']['Healing'] = {
    Neck = 'Justice Badge',
    Hands = 'Zealot\'s Mitts',
}
sets['Midcast'] = {
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Hands = 'Zealot\'s Mitts',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
    },
    ['Pollen'] = BluMids['Magical']['Healing'],
    ['Wild Carrot'] = BluMids['Magical']['Healing'],
    ['Head Butt'] = BluMids['Physical']['STR'],
    ['Death Scissors'] = BluMids['Physical']['STR'],
    ['Screwdriver'] = BluMids['Physical']['STRMND'],
    ['Bludgeon'] = BluMids['Physical']['CHR'],
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
    Back = 'Amemet Mantle +1',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Republic Subligar',
}
local WS_STR_VIT = {
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Republic Subligar',
}
sets['WeaponSkill'] = {
    ['Alpha'] = WS_STR,
    ['Calamity'] = WS_STR_VIT,
}

-- HandleItem
sets['Item'] = {
    ['Orange Juice'] = {
        Legs = 'Dream Trousers +1',
    }
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
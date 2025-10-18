--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Excalibur',
        Sub = { Name = 'Genbu\'s Shield', Augment = { [1] = 'STR+5', [2] = 'Accuracy+3' } },
        Range = { Name = 'Rogetsurin', Augment = 'STR+5' },
        Head = { Name = 'Homam Zucchetto', Augment = 'STR+5' },
        Neck = { Name = 'Chivalrous Chain', Augment = { [1] = 'STR+5', [2] = 'Accuracy+3' } },
        Ear1 = { Name = 'Ethereal Earring', Augment = 'VIT+5' },
        Ear2 = { Name = 'Brutal Earring', Augment = { [1] = 'STR+5', [2] = 'Accuracy+3' } },
        Body = 'Mirage Jubbah',
        Hands = { Name = 'Homam Manopolas', Augment = { [1] = 'STR+5', [2] = 'Accuracy+3' } },
        Ring1 = { Name = 'Phalanx Ring', Augment = { [1] = 'VIT+5', [2] = 'Accuracy+3' } },
        Ring2 = { Name = 'Phalanx Ring', Augment = { [1] = 'VIT+5', [2] = 'Accuracy+3' } },
        Back = { Name = 'Lamia Mantle', Augment = { [1] = 'VIT+5', [2] = '"Cure" spellcasting time -3%' } },
        Waist = { Name = 'Marid Belt', Augment = 'VIT+5' },
        Legs = 'Crimson Cuisses',
        Feet = { Name = 'Crimson Greaves', Augment = { [1] = 'VIT+5', [2] = 'Accuracy+3' } },
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
        TP = 'Shield',
        TPSwaps = false,
        Weapon = 'Sword',
        ['W.Variant'] = 'Shield',
        Ranged = 'Throwing',
        ['R.Variant'] = 'L15',
        Refresh = false,
        TPSwaps = true,
    },
    ['Dual'] = {
        Idle = 'Default',
        TP = 'Default',
        TPSwaps = false,
        Weapon = 'Club',
        ['W.Variant'] = 'L71',
        Ranged = 'Throwing',
        ['R.Variant'] = 'L15',
        Refresh = false,
        TPSwaps = true,
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
        TPSwaps = true,
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
        TPSwaps = false,
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
        TPSwaps = false,
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
        TPSwaps = false,
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
        TPSwaps = false,
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
        TPSwaps = false,
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Sword'] = {}
sets['Weapon']['Sword']['Shield'] = {
    Main = 'Excalibur',
    Sub = 'Genbu\'s Shield',
}
sets['Weapon']['Sword']['L71'] = {
    Main = 'Excalibur',
    Sub = 'Ifrit\'s Blade',
}
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
sets['Weapon']['Club']['Shield'] = {
    Main = 'Kerykeion',
    Sub = 'Genbu\'s Shield',
}
sets['Weapon']['Club']['L71'] = {
    Main = 'Kerykeion',
    Sub = 'Ifrit\'s Blade',
}
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
                    Head = 'Homam Zucchetto',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Ethereal Earring',
                    Ear2 = 'Brutal Earring',
                    Body = 'Mirage Jubbah',
                    Hands = 'Homam Manopolas',
                    Ring1 = 'Phalanx Ring',
                    Ring2 = 'Defending Ring',
                    Back = 'Lamia Mantle',
                    Waist = 'Marid Belt',
                    Legs = 'Crimson Cuisses',
                    Feet = 'Crimson Greaves',
                },
                ['L65'] = {
                    Head = 'Magus Keffiyeh',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Scorpion Harness',
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
                    Body = 'Scorpion Harness',
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
                    Body = 'Beetle Harness',
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
                Body = 'Mirage Jubbah',
            }
        },
    },
    ['Movement'] = {
        Legs = 'Crimson Cuisses',
        -- ['Thresholds'] = {
            -- ['Area'] = {
                -- ['Sandy'] = {
                    -- threshold = T{'Southern San d\'Oria', 'Northern San d\'Oria', 'Port San d\'Oria', 'Chateau d\'Oraguille'},
                    -- operator = 'contains',
                    -- ['gear'] = {
                        -- Body = 'Kingdom Aketon',
                    -- },
                -- },
            -- },
        -- },
    },
    ['Resting'] = {
        ['VarToggles'] = {
            ['TPSwaps'] = {
                Main = 'Dark Staff',
                Sub = 'Spear Strap',
            },
        },
        Ear1 = 'Relaxing Earring',
        Ear2 = 'Boroka Earring',
        -- Body = 'Errant Hpl.',
        Body = 'Mirage Jubbah',
        Waist = 'Hierarch Belt',
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Head = 'Homam Zucchetto',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Suppanomimi',
                    Ear2 = 'Brutal Earring',
                    Body = 'Mirage Jubbah',
                    Hands = 'Homam Manopolas',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Defending Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Homam Cosciales',
                    Feet = 'Mirage Charuqs',
                },
                ['Shield'] = {
                    Head = 'Homam Zucchetto',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Ethereal Earring',
                    Ear2 = 'Brutal Earring',
                    Body = 'Mirage Jubbah',
                    Hands = 'Homam Manopolas',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Defending Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Homam Cosciales',
                    Feet = 'Mirage Charuqs',
                },
                ['DD'] = {
                    Head = 'Homam Zucchetto',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Suppanomimi',
                    Ear2 = 'Brutal Earring',
                    Body = 'Scorpion Harness',
                    Head = 'Homam Zucchetto',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Homam Cosciales',
                    Feet = 'Mirage Charuqs',
                },
                ['L65'] = {
                    Head = 'Magus Keffiyeh',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Scorpion Harness',
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
                    Body = 'Scorpion Harness',
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
                    Body = 'Beetle Harness',
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
            ['Learn'] = {
                Head = 'Homam Zucchetto',
                Body = 'Magus Jubbah +1',
                Hands = 'Magus Bazubands',
                --Ring1 = 'San d\'Orian Ring',
            }
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
    ['Omega'] = {
        Ear1 = 'Loquac. Earring',
        Legs = 'Homam Cosciales',
    }
}

-- HandleMidcastIdle
sets['MidcastIdle'] = {
    ['Alpha'] = sets['Default'],
    ['Omega'] = {
        Waist = 'Silver Obi +1',
        Legs = 'Magus Shalwar +1',
    },
}

-- HandleMidcast
-- - BLU sets
local BluMids = {}
BluMids['Physical'] = {
    ['CHR_LE60'] = {
        Head = 'Noble\'s Ribbon',
        Neck = 'Spike Necklace',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Hands = 'Lgn. Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Hope Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Corsette +1',
        Legs = 'Republic Subligar',
        Feet = 'Angler\'s Boots',
    },
    ['STR_LE60'] = {
        Head = 'Ryl.Ftm. Bandana',
        Neck = 'Spike Necklace',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Hands = 'Lgn. Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Republic Subligar',
        Feet = 'Angler\'s Boots',
    },
    ['STRMND_LE60'] = {
        Head = 'Ryl.Ftm. Bandana',
        Neck = 'Justice Badge',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Hands = 'Lgn. Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Republic Subligar',
        Feet = 'Angler\'s Boots',
    },
    ['DEX_LE60'] = {
        Head = 'Emperor Hairpin',
        Neck = 'Spike Necklace',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Hands = 'Lgn. Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Republic Subligar',
        Feet = 'Leaping Boots',
    },
    ['AGI_LE60'] = {
        Head = 'Emperor Hairpin',
        Neck = 'Spike Necklace',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Hands = 'Lgn. Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Republic Subligar',
        Feet = 'Leaping Boots',
    },
    ['CHR'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Bird Whistle',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Magus Jubbah +1',
        Hands = 'Homam Manopolas',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Corsette +1',
        Legs = 'Mirage Shalwar',
        Feet = 'Mirage Charuqs',
    },
    ['STR'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Spike Necklace',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Magus Jubbah +1',
        Hands = 'Homam Manopolas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Mirage Shalwar',
        Feet = 'Mirage Charuqs',
    },
    ['STRMND'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Justice Badge',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Magus Jubbah +1',
        Hands = 'Mirage Bazubands',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Mirage Shalwar',
        Feet = 'Mirage Charuqs',
    },
    ['DEX'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Spike Necklace',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Magus Jubbah +1',
        Hands = 'Mirage Bazubands',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Magus Shalwar +1',
        Feet = 'Mirage Charuqs',
    },
    ['AGI'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Spike Necklace',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Magus Jubbah +1',
        Hands = 'Homam Manopolas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Magus Shalwar +1',
        Feet = 'Mirage Charuqs',
    },
    ['STRVITDEF'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Magus Jubbah +1',
        Hands = 'Homam Manopolas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Phalanx Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Marid Belt',
        Legs = 'Mirage Shalwar',
        Feet = 'Crimson Greaves',
    },
}

BluMids['Magical'] = {
    ['Healing'] = {
        Neck = 'Justice Badge',
        Body = 'Crm. Scale Mail',
        Hands = 'Mirage Bazubands',
    },
    ['MAttMND'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Justice Badge',
        Body = 'Magus Jubbah +1',
        Hands = 'Mirage Bazubands',
        Ear2 = 'Moldavite Earring',
        Legs = 'Mirage Shalwar',
    },
}

sets['Midcast'] = {
    ['Alpha'] = {
        Head = 'Homam Zucchetto',
        Ear1 = 'Loquac. Earring',
        Body = 'Magus Jubbah +1',
        Hands = 'Homam Manopolas',
        Waist = 'Speed Belt',
        Legs = 'Homam Cosciales',
    },
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

    ['Thresholds'] = {
        ['MainJobSync'] = {
            ['LE60'] = {
                threshold = 60,
                operator = '<=',
                ['gear'] = {
                    ['Bludgeon'] = BluMids['Physical']['CHR_LE60'],
                    ['Death Scissors'] = BluMids['Physical']['STR_LE60'],
                    ['Head Butt'] = BluMids['Physical']['STR_LE60'],
                    ['Jet Stream'] = BluMids['Physical']['AGI_LE60'],
                    ['Mandibular Bite'] = BluMids['Physical']['STR_LE60'],
                    ['Screwdriver'] = BluMids['Physical']['STRMND_LE60'],
                    ['Sickle Slash'] = BluMids['Physical']['DEX_LE60'],
                    ['Uppercut'] = BluMids['Physical']['STR_LE60'],
                },
            },
            ['GT60'] = {
                threshold = 60,
                operator = '>',
                ['gear'] = {
                    ['Bludgeon'] = BluMids['Physical']['CHR'],
                    ['Cannonball'] = BluMids['Physical']['STRVITDEF'],
                    ['Death Scissors'] = BluMids['Physical']['STR'],
                    ['Disseverment'] = BluMids['Physical']['STR'],
                    ['Frenetic Rip'] = BluMids['Physical']['STR'],
                    ['Head Butt'] = BluMids['Physical']['STR'],
                    ['Jet Stream'] = BluMids['Physical']['AGI'],
                    ['Magic Hammer'] = BluMids['Magical']['MAttMND'],
                    ['Mandibular Bite'] = BluMids['Physical']['STR'],
                    ['Screwdriver'] = BluMids['Physical']['STRMND'],
                    ['Sickle Slash'] = BluMids['Physical']['DEX'],
                    ['Uppercut'] = BluMids['Physical']['STR'],
                    ['Vertical Cleave'] = BluMids['Physical']['STR'],
                },
            },
        },
    },
    ['Omega'] = {
        ['VarToggles'] = {
            ['TPSwaps'] = {
                ['Elemental'] = {
                    ['Element'] = {
                        ['Fire'] = {
                            --Main = 'Vulcan\'s Staff',
                            --Sub = 'Spear Strap',
                        },
                        ['Earth'] = {
                            Main = 'Earth Staff',
                            Sub = 'Spear Strap',
                        },
                        ['Water'] = {
                            --Main = 'Neptune\'s Staff',
                            --Sub = 'Spear Strap',
                        },
                        ['Wind'] = {
                            --Main = 'Auster\'s Staff',
                            --Sub = 'Spear Strap',
                        },
                        ['Ice'] = {
                            --Main = 'Aquilo\'s Staff',
                            --Sub = 'Spear Strap',
                        },
                        ['Thunder'] = {
                            --Main = 'Jupiter\'s Staff',
                            --Sub = 'Spear Strap',
                        },
                        ['Light'] = {
                            --Main = 'Apollo\'s Staff',
                            --Sub = 'Spear Strap',
                        },
                        ['Dark'] = {
                            Main = 'Dark Staff',
                            Sub = 'Spear Strap',
                        },
                    },
                    ['Day'] = {
                        ClashCheck = true,
                        ['Fire'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Earth'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Water'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Wind'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Ice'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Thunder'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Light'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Dark'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                    },
                    ['Weather'] = {
                        ClashCheck = true,
                        ['Fire'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Earth'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Water'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Wind'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Ice'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Thunder'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Light'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                        ['Dark'] = {
                            Waist = 'Hachirin-no-Obi',
                        },
                    },
                },
            },
        },
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
local WS_STR_LT60 = {
    Head = 'Ryl.Ftm. Bandana',
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Republic Subligar',
    Feet = 'Angler\'s Boots',
}
local WS_STR_MND_LT60 = {
    Head = 'Ryl.Ftm. Bandana',
    Neck = 'Justice Badge',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Republic Subligar',
    Feet = 'Angler\'s Boots',
}
local WS_STR = {
    Head = 'Homam Zucchetto',
    Neck = 'Fotia Gorget',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Body = 'Magus Jubbah +1',
    Hands = 'Homam Manopolas',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Mirage Shalwar',
    Feet = 'Mirage Charuqs',
}
local WS_STR_MND = {
    Head = 'Homam Zucchetto',
    Neck = 'Fotia Gorget',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Brutal Earring',
    Body = 'Magus Jubbah +1',
    Hands = 'Mirage Bazubands',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Mirage Shalwar',
    Feet = 'Mirage Charuqs',
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
    }
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
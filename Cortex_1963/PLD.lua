--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Mace',
        Sub = 'Lauan Shield',
        Head = 'Ryl. Squire\'s Helm',
        Neck = 'Justice Badge',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Ctr. Scale Mail',
        Hands = 'Battle Gloves',
        Ring1 = 'San d\'Orian Ring',
        Ring2 = 'Warp Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Warrior\'s Belt +1',
        Legs = 'Ryl.Ftm. Trousers',
        Feet = 'Leaping Boots',
    },
    ['L25'] = {
        Main = 'Mace',
        Sub = 'Kite Shield',
        Head = 'Iron Mask',
        Neck = 'Justice Badge',
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
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Default',
        Weapon = 'Sword',
        ['W.Variant'] = 'Dragon',
        Ranged = 'Bow',
        ['R.Variant'] = 'Default',
        Resist = 'None',
        SIRD = true,
        Refresh = false,
        BQRing = true,
    },
    ['Kite'] = {
        Idle = 'Kite',
        TP = 'Default',
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
        Ranged = 'Bow',
        ['R.Variant'] = 'Default',
        Resist = 'None',
        SIRD = true,
        Refresh = false,
        BQRing = true,
    },
    ['Merit'] = {
        Idle = 'Default',
        TP = 'Balanced',
        Weapon = 'Club',
        ['W.Variant'] = 'Dual',
        Ranged = 'Bow',
        ['R.Variant'] = 'Default',
        Resist = 'None',
        SIRD = true,
        Refresh = true,
        BQRing = false,
    },
    ['L60'] = {
        Idle = 'L60',
        TP = 'L60',
        SIRD = true,
        Weapon = 'Club',
        ['W.Variant'] = 'L55',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Bibiki',
        Resist = 'None',
        SIRD = true,
        Refresh = true,
        BQRing = true,
    },
    ['L55'] = {
        Idle = 'L55',
        TP = 'L55',
        Weapon = 'Club',
        ['W.Variant'] = 'L55',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Bibiki',
        Resist = 'None',
        SIRD = false,
        Refresh = false,
        BQRing = true,
    },
    ['L52'] = {
        Idle = 'L52',
        TP = 'L52',
        Weapon = 'Club',
        ['W.Variant'] = 'L50',
        Ranged = 'Bow',
        ['R.Variant'] = 'Empty',
        Resist = 'None',
        SIRD = false,
        Refresh = false,
        BQRing = false,
    },
    ['L50'] = {
        Idle = 'L50',
        TP = 'L50',
        Weapon = 'Club',
        ['W.Variant'] = 'L50',
        Ranged = 'Bow',
        ['R.Variant'] = 'Empty',
        Resist = 'None',
        SIRD = false,
        Refresh = false,
        BQRing = false,
    },
    ['L40'] = {
        Idle = 'L40',
        TP = 'L40',
        Weapon = 'Club',
        ['W.Variant'] = 'L34',
        Ranged = 'Bow',
        ['R.Variant'] = 'Empty',
        Resist = 'None',
        SIRD = false,
        Refresh = false,
        BQRing = false,
    },
    ['L30'] = {
        Idle = 'L30',
        TP = 'L30',
        Weapon = 'Club',
        ['W.Variant'] = 'L30',
        Ranged = 'Bow',
        ['R.Variant'] = 'Empty',
        Resist = 'None',
        SIRD = false,
        Refresh = false,
        BQRing = false,
    },
    ['L25'] = {
        Idle = 'L25',
        TP = 'L25',
        Weapon = 'Club',
        ['W.Variant'] = 'L20',
        Ranged = 'Bow',
        ['R.Variant'] = 'Empty',
        Resist = 'None',
        SIRD = false,
        Refresh = false,
        BQRing = false,
    },
    ['L20'] = {
        Idle = 'L21',
        TP = 'L21',
        Weapon = 'Club',
        ['W.Variant'] = 'L20',
        Ranged = 'Bow',
        ['R.Variant'] = 'Empty',
        Resist = 'None',
        SIRD = false,
        Refresh = false,
        BQRing = false,
    },
    ['L15'] = {
        Idle = 'L15',
        TP = 'L15',
        Weapon = 'Club',
        ['W.Variant'] = 'L10',
        Ranged = 'Bow',
        ['R.Variant'] = 'Empty',
        Resist = 'None',
        SIRD = false,
        Refresh = false,
        BQRing = false,
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Sword'] = {}
sets['Weapon']['Sword']['Dual'] = {
    Main = 'Caliburn',
    Sub = 'Joyeuse',
}
sets['Weapon']['Sword']['JoyToy'] = {
    Main = 'Joyeuse',
    Sub = 'Palmerin\'s Shield',
}
sets['Weapon']['Sword']['Dragon'] = {
    Main = 'Hrotti',
    Sub = 'Palmerin\'s Shield',
}
sets['Weapon']['Sword']['L71'] = {
    Main = 'Durandal',
    Sub = 'Palmerin\'s Shield',
}
sets['Weapon']['Sword']['L66'] = {
    Main = 'Espadon',
    Sub = 'Ryl.Grd. Shield',
}
sets['Weapon']['Sword']['L55'] = {
    Main = 'Tct.Mag. Espadon',
    Sub = 'Ryl.Grd. Shield',
}
sets['Weapon']['Sword']['L50'] = {
    Main = 'Tct.Mag. Espadon',
    Sub = 'R.K. Army Shield',
}
sets['Weapon']['Sword']['L42'] = {
    Main = 'Honor Sword',
    Sub = 'Kite Shield',
}
sets['Weapon']['Sword']['L09'] = {
    Main = 'Spatha',
    Sub = 'Lauan Shield',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['Dual'] = {
    Main = 'Martial Wand',
    Sub = 'Joyeuse',
}
sets['Weapon']['Club']['L72'] = {
    Main = 'Martial Wand',
    Sub = 'Palmerin\'s Shield',
}
sets['Weapon']['Club']['L55'] = {
    Main = 'Kingdom Mace',
    Sub = 'Ryl.Grd. Shield',
}
sets['Weapon']['Club']['L50'] = {
    Main = 'Kingdom Mace',
    Sub = 'R.K. Army Shield',
}
sets['Weapon']['Club']['L34'] = {
    Main = 'Kingdom Mace',
    Sub = 'Kite Shield',
}
sets['Weapon']['Club']['L30'] = {
    Main = 'Ryl.Sqr. Mace',
    Sub = 'Kite Shield',
}
sets['Weapon']['Club']['L28'] = {
    Main = 'Mace',
    Sub = 'Kite Shield',
}
sets['Weapon']['Club']['L20'] = {
    Main = 'Mace',
    Sub = 'Mahogany Shield',
}
sets['Weapon']['Club']['L16'] = {
    Main = 'Chestnut Club',
    Sub = 'Pelte',
}
sets['Weapon']['Club']['L10'] = {
    Main = 'Freesword\'s Club',
    Sub = 'Pelte',
}
--sets['Weapon']['Club']['Warp'] = {
--    Main = 'Warp Cudgel',
--}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    Main = 'Earth Staff',
    Sub = 'Spear Strap',
}
sets['Weapon']['Staff']['Signet'] = {
    Main = 'Kgd. Signet Staff',
}
sets['Weapon']['Polearm'] = {}
sets['Weapon']['Polearm']['L53'] = {
    Main = 'Thundercloud',
}

sets['Ranged'] = {}
sets['Ranged']['Throwing'] = {}
sets['Ranged']['Throwing']['Empty'] = {}
sets['Ranged']['Throwing']['Bibiki'] = {
    Ammo = 'Bibiki Seashell',
}
sets['Ranged']['Bow'] = {}
sets['Ranged']['Bow']['Empty'] = {}
sets['Ranged']['Bow']['Default'] = {
    Range = 'Lamian Kaman',
    Ammo = 'Platinum Arrow',
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
                    Head = 'Koenig Schaller',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Ethereal Earring',
                    Body = 'Koenig Cuirass',
                    Hands = 'Kng. Handschuhs',
                    Ring1 = 'Phalanx Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Lamia Mantle',
                    Waist = 'Marid Belt',
                    Legs = 'Glt. Breeches +1',
                    Feet = 'Glt. Leggings +1',
                },
                ['Kite'] = {
                    Head = 'Koenig Schaller',
                    Neck = 'Van Pendant',
                    Ear1 = 'Loquac. Earring',
                    Ear2 = 'Ethereal Earring',
                    Body = 'Koenig Cuirass',
                    Hands = 'Kng. Handschuhs',
                    Ring1 = 'Phalanx Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Lamia Mantle',
                    Waist = 'Marid Belt',
                    Legs = 'Crimson Cuisses',
                    Feet = 'Crimson Greaves',
                },
                ['L60'] = {
                    Head = 'Gallant Coronet',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Knightly Earring',
                    Body = 'Gallant Surcoat',
                    Hands = 'Gallant Gauntlets',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Gallant Leggings',
                },
                ['L55'] = {
                    Head = 'Ryl.Kgt. Bascinet',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Ryl.Kgt. Chainmail',
                    Hands = 'Gallant Gauntlets',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Gallant Leggings',
                },
                ['L52'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Parade Cuirass',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Gallant Leggings',
                },
                ['L50'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Parade Cuirass',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L40'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L30'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
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
                ['L25'] = {
                    Head = 'Iron Mask',
                    Neck = 'Van Pendant',
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
                    Neck = 'Van Pendant',
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
                Body = 'Fsh. Tunica',
                Hands = 'Fsh. Gloves',
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
            ['Refresh'] = {
                VarVisible = true,
                Head = '',
                Body = 'Vermillion Cloak',
            }
        },
    },
    ['Movement'] = {
        Legs = 'Crimson Cuisses',
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
        -- Main = 'Pluto\'s Staff',
        -- Head = 'Dls. Chapeau +1',
        -- Neck = 'Checkered Scarf',
        -- Ear1 = 'Sanative Earring',
        Ear2 = 'Boroka Earring',
        -- Body = 'Errant Hpl.',
        -- Body = 'Vermillion Cloak',
        --Legs = 'Baron\'s Slops',
        -- ['Thresholds'] = {
            -- ['MP'] ={
                -- ['Low'] = {
                    -- threshold = 780,
                    -- operator = '<',
                    -- ['gear'] = {
                        -- Waist = 'Duelist\'s Belt',
                    -- },
                -- },
                -- ['High'] = {
                    -- threshold = 780,
                    -- operator = '>',
                    -- ['gear'] = {
                        -- Waist = 'Hierarch Belt',
                    -- },
                -- },
            -- },
        -- },
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Head = 'Koenig Schaller',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Ethereal Earring',
                    Body = 'Koenig Cuirass',
                    Hands = 'Kng. Handschuhs',
                    Ring1 = 'Phalanx Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Lamia Mantle',
                    Waist = 'Marid Belt',
                    Legs = 'Glt. Breeches +1',
                    Feet = 'Glt. Leggings +1',                   
                },
                ['Balanced'] = {
                    Head = 'Homam Zucchetto',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Suppanomimi',
                    Ear2 = 'Ethereal Earring',
                    Body = 'Haubergeon',
                    Hands = 'Homam Manopolas',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Glt. Breeches +1',
                    Feet = 'Glt. Leggings +1',                   
                },
                ['DD'] = {
                    Head = 'Homam Zucchetto',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Suppanomimi',
                    Ear2 = 'Ethereal Earring',
                    Body = 'Haubergeon',
                    Hands = 'Homam Manopolas',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Glt. Leggings +1',                 
                },
                ['L60'] = {
                    Head = 'Gallant Coronet',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Knightly Earring',
                    Body = 'Gallant Surcoat',
                    Hands = 'Gallant Gauntlets',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Gallant Leggings',
                },
                ['L55'] = {
                    Head = 'Ryl.Kgt. Bascinet',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Ryl.Kgt. Chainmail',
                    Hands = 'Gallant Gauntlets',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Kgt. Breeches',
                    Feet = 'Gallant Leggings',
                },
                ['L52'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Parade Cuirass',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Gallant Leggings',
                },
                ['L50'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Parade Cuirass',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Phalanx Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',                   
                },
                ['L40'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Wing Earring',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Sqr. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',                   
                },
                ['L30'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Van Pendant',
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
                ['L25'] = {
                    Head = 'Iron Mask',
                    Neck = 'Van Pendant',
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
                    Neck = 'Van Pendant',
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
            ['BQRing'] = {
                VarVisible = false,
                Ring2 = 'Bomb Queen Ring',
            },
        },
        ['VarCycles'] = {
            ['Resist'] = {
                ['None'] = {},
                ['Earth'] = {
                    Feet = 'Crimson Greaves',
                },
                ['Wind'] = {
                    Feet = 'Crimson Greaves',
                },
                ['Ice'] = {
                    Ear1 = 'Crimson Earring',
                    Feet = 'Crimson Greaves',
                },
                ['Fire'] = {
                    Ear1 = 'Crimson Earring',
                    Legs = 'Crimson Cuisses',
                },
                ['Water'] = {
                    Legs = 'Crimson Cuisses',
                },
                ['Thunder'] = {
                    Legs = 'Crimson Cuisses',
                },
                ['Light'] = {
                    Feet = 'Crimson Greaves',
                },
                ['Dark'] = {
                    Legs = 'Crimson Cuisses',
                },
            },
        },
        ['Buff'] = {
            ['Cover'] = {
                Head = 'Gallant Coronet',
            },
        },
    },
}

-- HandlePrecast
sets['Precast'] = {
    ['Alpha'] = {
        Head = 'Walahra Turban',
    },
    ['Healing Magic'] = {
        Head = 'Gallant Coronet',
        Body = 'Koenig Cuirass',
        Legs = 'Valor Breeches',
    },
    ['Omega'] = {
        Ear1 = 'Loquac. Earring',
    }
}

-- HandleMidcastIdle
sets['MidcastIdle'] = {
    ['Alpha'] = sets['Default'],
    ['Omega'] = {
        Head = 'Koenig Schaller',
        Body = 'Koenig Cuirass',
        Hands = 'Kng. Handschuhs',
        Legs = 'Valor Breeches',
        Feet = 'Glt. Leggings +1',
        ['VarToggles'] = {
            ['SIRD'] = {
                Ear2 = 'Knightly Earring',
                Waist = 'Silver Obi +1',
                Legs = 'Valor Breeches',
            },
        },
    },
}

--HandleMidcast
local MAEnmityBase = {
    Head = 'Aegishjalmr',
    Body = 'Gallant Surcoat',
    Hands = 'Valor Gauntlets',
    Legs = 'Valor Breeches',
    Feet = 'Valor Leggings',
}
local BluMids = {}
BluMids['Physical'] = {}
BluMids['Physical']['CHR'] = {
    Head = 'Koenig Schaller',
    --Body = 'Koenig Cuirass',
    Hands = 'Kng. Handschuhs',
    Ring1 = 'Hope Ring',
    Ring2 = 'Hope Ring',
    Waist = 'Ryl.Kgt. Belt',
}
sets['Midcast'] = {
    ['Alpha'] = {
        Head = 'Homam Zucchetto',
        Ear1 = 'Loquac. Earring',
        Body = 'Koenig Cuirass',
        Hands = 'Homam Manopolas',
        Waist = 'Speed Belt',
        Legs = 'Glt. Breeches +1',
        Feet = 'Valor Leggings',
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Justice Badge',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Justice Badge',
        },
    },
    ['Healing Magic'] = {
        Head = 'Gallant Coronet',
        Neck = 'Justice Badge',
        Feet = 'Valor Leggings',
    },
    ['Enhancing Magic'] = {
        Neck = 'Justice Badge',
        Legs = 'Glt. Breeches +1',
    },
    ['Dark Magic'] = {
    },
    ['Divine Magic'] = {
        Neck = 'Justice Badge',
    },
    ['Elemental Magic'] = {
    },
    ['Blue Magic'] = {
        ['Bludgeon'] = BluMids['Physical']['CHR'],
        ['Sheep Song'] = MAEnmityBase,
        ['Soporific'] = MAEnmityBase,
    },
    ['Omega'] = {
        ['Flash'] = MAEnmityBase,
    }
}

-- HandlePreshot
sets['Preshot'] = {
}

-- HandleMidshot
sets['Midshot'] = {
}

-- HandleAbility
local JAEnmityBase = {
    Head = 'Aegishjalmr',
    Body = 'Gallant Surcoat',
    Hands = 'Valor Gauntlets',
    Legs = 'Valor Breeches',
    Feet = 'Valor Leggings',
}
sets['Ability'] = {
    ['Alpha'] = JAEnmityBase,
    ['Provoke'] = JAEnmityBase,
    ['Holy Circle'] = {
        Feet = 'Gallant Leggings',
    },
    ['Shield Bash'] = {
        Ear2 = 'Knightly Earring',
        Hands = 'Valor Gauntlets',
    },
    ['Sentinel'] = {
        Feet = 'Valor Leggings',
    },
}

-- HandleWeaponSkill
local WS_STR_LT60 = {
    Head = 'Ryl.Kgt. Bascinet',
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Brave Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Angler\'s Boots',
}
local WS_STR_MND_LT60 = {
    Head = 'Gallant Coronet',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Traveler\'s Mantle',
    Waist = 'Brave Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Angler\'s Boots',
}
local WS_STR = {
    Head = 'Ryl.Kgt. Bascinet',
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Body = 'Haubergeon',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Brave Belt',
    Legs = 'Ryl.Kgt. Breeches',
}
local WS_STR_MND = {
    Head = 'Gallant Coronet',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Body = 'Haubergeon',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Brave Belt',
    Legs = 'Ryl.Kgt. Breeches',
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
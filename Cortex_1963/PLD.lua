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
        ['W.Variant'] = 'Excalibur',
        Ranged = 'Bow',
        ['R.Variant'] = 'Default',
        Resist = 'None',
        SIRD = true,
        Refresh = false,
        BQRing = false,
        JellyRing = false,
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
        BQRing = false,
        JellyRing = false,
    },
    ['Merit'] = {
        Idle = 'Default',
        TP = 'Dual',
        Weapon = 'Sword',
        ['W.Variant'] = 'Dual',
        Ranged = 'Bow',
        ['R.Variant'] = 'Default',
        Resist = 'None',
        SIRD = true,
        Refresh = true,
        BQRing = false,
        JellyRing = false,
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
        BQRing = false,
        JellyRing = false,
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
        BQRing = false,
        JellyRing = false,
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
        JellyRing = false,
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
        JellyRing = false,
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
        JellyRing = false,
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
        JellyRing = false,
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
        JellyRing = false,
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
        JellyRing = false,
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
        JellyRing = false,
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Sword'] = {}
sets['Weapon']['Sword']['Excalibur'] = {
    Main = 'Excalibur',
    Sub = 'Aegis',
}
sets['Weapon']['Sword']['STrials'] = {
    Main = 'Sapara of Trials',
    Sub = 'Aegis',
}
sets['Weapon']['Sword']['Dual'] = {
    Main = 'Excalibur',
    Sub = 'Joyeuse',
}
sets['Weapon']['Sword']['JoyToy'] = {
    Main = 'Joyeuse',
    Sub = 'Aegis',
}
sets['Weapon']['Sword']['Dragon'] = {
    Main = 'Hrotti',
    Sub = 'Aegis',
}
sets['Weapon']['Sword']['Haute'] = {
    Main = 'Hauteclaire',
    Sub = 'Aegis',
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
    Sub = 'Aegis',
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
    Main = 'Terra\'s Staff',
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
sets['Ranged']['Zeni'] = {}
sets['Ranged']['Zeni']['Normal'] = {
    Range = 'Soultrapper',
    Ammo = 'Blank Soulplate',
}
sets['Ranged']['Zeni']['2000'] = {
    Range = 'Soultrapper 2000',
    Ammo = 'Blank Soulplate',
}
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Defending Ring',
                    Back = 'Lamia Mantle',
                    Waist = 'Marid Belt',
                    Legs = 'Koenig Diechlings',
                    Feet = 'Glt. Leggings +1',
                },
                ['Kite'] = {
                    Head = 'Koenig Schaller',
                    Neck = 'Van Pendant',
                    Ear1 = 'Loquac. Earring',
                    Ear2 = 'Ethereal Earring',
                    Body = 'Koenig Cuirass',
                    Hands = 'Kng. Handschuhs',
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Defending Ring',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
            ['Refresh'] = {
                VarVisible = true,
                Head = '',
                Body = 'Vermillion Cloak',
            }
        },
    },
    ['Movement'] = {
        Legs = 'Crimson Cuisses',
    },
    ['Resting'] = {
        -- Main = 'Pluto\'s Staff',
        -- Head = 'Dls. Chapeau +1',
        -- Neck = 'Checkered Scarf',
        -- Ear1 = 'Sanative Earring',
        Ear1 = 'Relaxing Earring',
        Ear2 = 'Boroka Earring',
        -- Body = 'Errant Hpl.',
        -- Body = 'Vermillion Cloak',
        Waist = 'Hierarch Belt',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Defending Ring',
                    Back = 'Lamia Mantle',
                    Waist = 'Marid Belt',
                    Legs = 'Koenig Diechlings',
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
                    Ring2 = 'Defending Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Homam Cosciales',
                    Feet = 'Glt. Leggings +1',                   
                },
                ['Dual'] = {
                    Head = 'Homam Zucchetto',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Suppanomimi',
                    Ear2 = 'Brutal Earring',
                    Body = 'Homam Corazza',
                    Hands = 'Homam Manopolas',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Defending Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Homam Cosciales',
                    Feet = 'Crimson Greaves',                   
                },
                ['DD'] = {
                    Head = 'Homam Zucchetto',
                    Neck = 'Chivalrous Chain',
                    Ear1 = 'Suppanomimi',
                    Ear2 = 'Ethereal Earring',
                    Body = 'Haubergeon',
                    Hands = 'Homam Manopolas',
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
                    Back = 'Amemet Mantle +1',
                    Waist = 'Speed Belt',
                    Legs = 'Homam Cosciales',
                    Feet = 'Glt. Leggings +1',                 
                },
                ['L60'] = {
                    Head = 'Gallant Coronet',
                    Neck = 'Van Pendant',
                    Ear1 = 'Buckler Earring',
                    Ear2 = 'Knightly Earring',
                    Body = 'Gallant Surcoat',
                    Hands = 'Gallant Gauntlets',
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
                    Ring1 = 'Sattva Ring',
                    Ring2 = 'Rajas Ring',
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
        ['VarCycles'] = {
            ['Resist'] = {
                ['None'] = {},
                ['Earth'] = {
                    Body = 'Crm. Scale Mail',
                    Feet = 'Crimson Greaves',
                },
                ['Wind'] = {
                    Body = 'Crm. Scale Mail',
                    Feet = 'Crimson Greaves',
                },
                ['Ice'] = {
                    Ear1 = 'Crimson Earring',
                    Body = 'Crm. Scale Mail',
                    Feet = 'Crimson Greaves',
                },
                ['Fire'] = {
                    Ear1 = 'Crimson Earring',
                    Body = 'Crm. Scale Mail',
                    Legs = 'Crimson Cuisses',
                },
                ['Water'] = {
                    Body = 'Crm. Scale Mail',
                    Legs = 'Crimson Cuisses',
                },
                ['Thunder'] = {
                    Body = 'Crm. Scale Mail',
                    Legs = 'Crimson Cuisses',
                },
                ['Light'] = {
                    Body = 'Crm. Scale Mail',
                    Feet = 'Crimson Greaves',
                },
                ['Dark'] = {
                    Body = 'Crm. Scale Mail',
                    Legs = 'Crimson Cuisses',
                },
                ['Breath'] = {
                    Body = 'Crm. Scale Mail',
                },
            },
        },
        ['Buff'] = {
            ['Cover'] = {
                Head = 'Gallant Coronet',
                Body = 'Valor Surcoat',
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
    Ring1 = 'Sattva Ring',
    Legs = 'Valor Breeches',
    Feet = 'Valor Leggings',
}
local BluMids = {}
BluMids['Physical'] = {}
BluMids['Physical']['CHR'] = {
    Head = 'Koenig Schaller',
    Body = 'Koenig Cuirass',
    Hands = 'Kng. Handschuhs',
    Ring1 = 'Hope Ring',
    Ring2 = 'Hope Ring',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Koenig Diechlings',
}
sets['Midcast'] = {
    ['Alpha'] = {
        Head = 'Homam Zucchetto',
        Ear1 = 'Loquac. Earring',
        Body = 'Koenig Cuirass',
        Hands = 'Homam Manopolas',
        Waist = 'Speed Belt',
        Legs = 'Koenig Diechlings',
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
    Ring1 = 'Sattva Ring',
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
    ['Rampart'] = {
        Feet = 'Valor Coronet',
    },
}

-- HandleWeaponSkill
local WS_STR_LT60 = {
    Head = 'Ryl.Kgt. Bascinet',
    Neck = 'Fotia Gorget',
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
local WS_STR_MND_LT60 = {
    Head = 'Gallant Coronet',
    Neck = 'Fotia Gorget',
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
    Head = 'Ryl.Kgt. Bascinet',
    Neck = 'Fotia Gorget',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Brutal Earring',
    Body = 'Haubergeon',
    Hands = 'Alkyoneus\'s Brc.',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Ryl.Kgt. Belt',
    Legs = 'Valor Breeches',
}
local WS_STR_MND = {
    Head = 'Gallant Coronet',
    Neck = 'Fotia Gorget',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Brutal Earring',
    Body = 'Haubergeon',
    Hands = 'Alkyoneus\'s Brc.',
    Ring1 = 'Rajas Ring',
    Ring2 = 'Courage Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Ryl.Kgt. Belt',
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
    }
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
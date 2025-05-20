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
        ['W.Variant'] = 'L13',
        Ranged = 'Throwing',
        ['R.Variant'] = 'Dart',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Katana'] = {}
sets['Weapon']['Katana']['L07'] = {
    Main = 'Wakizashi',
    Sub = 'Wakizashi',
}
sets['Weapon']['Katana']['L13'] = {
    Main = 'Shinobi-Gatana',
    Sub = 'Shinobi-Gatana',
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
sets['Weapon']['Staff']['Signet'] = {
    Main = 'Kgd. Signet Staff',
}

sets['Ranged'] = {}
sets['Ranged']['Throwing'] = {}
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
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Brass Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L15'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
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
                --Body = 'Worker Tunica',
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
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
                    Legs = 'Brass Subligar',
                    Feet = 'Leaping Boots',
                },
                ['L15'] = {
                    Head = 'Ryl.Ftm. Bandana',
                    Neck = 'Van Pendant',
                    Body = 'Ryl.Ftm. Vest',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt',
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
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Waist = 'Brave Belt',
    Legs = 'Republic Subligar',
}
local WS_STR_VIT = {
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
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
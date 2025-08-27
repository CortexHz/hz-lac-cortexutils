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
        Idle = 'L40',
        TP = 'L40',
        TPSwaps = false,
        --['R.Type'] = 'BPP',
        Weapon = 'Axe',
        ['W.Variant'] = 'L40',
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
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
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
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['Defense'] = {
                    Head = 'Ryl. Squire\'s Helm',
                    Neck = 'Spike Necklace',
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
                ['L40'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
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
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Ryl.Kgt. Mufflers',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Ram Mantle +1',
                    Waist = 'Ryl.Kgt. Belt',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['L40'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
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
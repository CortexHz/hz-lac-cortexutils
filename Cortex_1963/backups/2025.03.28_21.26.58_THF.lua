--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Horror Voulge',
        Range = 'Light Crossbow +1',
        Ammo = 'Blind Bolt',
        Head = 'Emperor Hairpin',
        Neck = 'Van Pendant',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Ryl.Sqr. Chainmail',
        Hands = 'Kingdom Mufflers',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Nomad\'s Mantle +1',
        Waist = 'Warrior\'s Belt +1',
        Legs = 'Ryl.Sqr. Breeches',
        Feet = 'Leaping Boots',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Default',
        TPSwaps = false,
        Weapon = 'Great Axe',
        ['W.Variant'] = 'L37',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Great Axe'] = {}
sets['Weapon']['Great Axe']['L37'] = {
    Main = 'Horror Voulge',
}
sets['Weapon']['Axe'] = {}
sets['Weapon']['Axe']['L32'] = {
    Main = 'War Pick +1',
    Sub = 'Warrior\'s Axe',
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
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Kingdom Mufflers',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Nomad\'s Mantle +1',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['Defense'] = {
                    Head = 'Beetle Mask +1',
                    Neck = 'Van Pendant',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Kingdom Mufflers',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Nomad\'s Mantle +1',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Btl. Leggings +1',
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
                    Head = 'Emperor Hairpin',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Kingdom Mufflers',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Nomad\'s Mantle +1',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['Defense'] = {
                    Head = 'Beetle Mask +1',
                    Neck = 'Spike Necklace',
                    Ear1 = 'Beetle Earring +1',
                    Ear2 = 'Beetle Earring +1',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Kingdom Mufflers',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Nomad\'s Mantle +1',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Btl. Leggings +1',
                },
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
    Hands = 'Gigas Bracelets',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Waist = 'Brave Belt',
    Legs = 'Republic Subligar',
}
local WS_STR_VIT = {
    Neck = 'Spike Necklace',
    Hands = 'Gigas Bracelets',
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
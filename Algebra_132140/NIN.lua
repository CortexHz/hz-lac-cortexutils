--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Ohaguro',
        Sub = 'Nikkariaoe',
        Range = 'Wingedge',
        Head = 'Emperor Hairpin',
        Neck = 'Van Pendant',
        Ear1 = 'Dodge Earring',
        Ear2 = 'Dodge Earring',
        Body = 'Ryl.Sqr. Chainmail',
        Hands = 'Horomusha Kote',
        Ring1 = 'Woodsman Ring',
        Ring2 = 'Woodsman Ring',
        Back = 'Nomad\'s Mantle +1',
        Waist = 'Warrior\'s Belt +1',
        Legs = 'Ryl.Sqr. Breeches',
        Feet = 'Leaping Boots',
    },
    ['sword'] = {
        Main = 'Flame Sword',
        Sub = 'Flame Sword',
        Range = 'Wingedge',
        Head = 'Emperor Hairpin',
        Neck = 'Van Pendant',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Federation Gi',
        Hands = 'Horomusha Kote',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Nomad\'s Mantle +1',
        Waist = 'Warrior\'s Belt +1',
        Legs = 'Republic Subligar',
        Feet = 'Leaping Boots',
    },
    ['katana'] = {
        Main = 'Busuto +1',
        Sub = 'Fukuro',
        Range = 'Wingedge',
        Head = 'Emperor Hairpin',
        Neck = 'Van Pendant',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Federation Gi',
        Hands = 'Horomusha Kote',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Nomad\'s Mantle +1',
        Waist = 'Warrior\'s Belt +1',
        Legs = 'Republic Subligar',
        Feet = 'Leaping Boots',
    },
    ['L21'] = {
        Main = 'Flame Sword',
        Sub = 'Flame Sword',
        Head = 'Emperor Hairpin',
        Neck = 'Van Pendant',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Federation Gi',
        Hands = 'Horomusha Kote',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Nomad\'s Mantle +1',
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
        Weapon = 'Katana',
        ['W.Variant'] = 'L39',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Katana'] = {}
sets['Weapon']['Katana']['L24'] = {
    Main = 'Hibari +1',
    Sub = 'Hibari +1',
}
sets['Weapon']['Katana']['L26'] = {
    Main = 'Busuto +1',
    Sub = 'Hibari +1',
}
sets['Weapon']['Katana']['L28'] = {
    Main = 'Busuto +1',
    Sub = 'Fukuro',
}
sets['Weapon']['Katana']['L30'] = {
    Main = 'Nikkariaoe',
    Sub = 'Fukuro',
}
sets['Weapon']['Katana']['L32'] = {
    Main = 'Kodachi +1',
    Sub = 'Nikkariaoe',
}
sets['Weapon']['Katana']['L39'] = {
    Main = 'Ohaguro',
    Sub = 'Nikkariaoe',
}
sets['Weapon']['Sword'] = {}
sets['Weapon']['Sword']['L18'] = {
    Main = 'Flame Sword',
    Sub = 'Flame Sword',
}
sets['Weapon']['Sword']['L30'] = {
    Main = 'Centurion\'s Sword',
    Sub = 'Fukuro',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['None'] = {}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Van Pendant',
                    Ear1 = 'Dodge Earring',
                    Ear2 = 'Dodge Earring',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Horomusha Kote',
                    Ring1 = 'Woodsman Ring',
                    Ring2 = 'Woodsman Ring',
                    Back = 'Nomad\'s Mantle +1',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['Defense'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Van Pendant',
                    Ear1 = 'Dodge Earring',
                    Ear2 = 'Dodge Earring',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Horomusha Kote',
                    Ring1 = 'Woodsman Ring',
                    Ring2 = 'Woodsman Ring',
                    Back = 'Nomad\'s Mantle +1',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
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
                    Neck = 'Ryl.Sqr. Collar',
                    Ear1 = 'Dodge Earring',
                    Ear2 = 'Dodge Earring',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Horomusha Kote',
                    Ring1 = 'Woodsman Ring',
                    Ring2 = 'Woodsman Ring',
                    Back = 'Nomad\'s Mantle +1',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
                    Feet = 'Leaping Boots',
                },
                ['Acc'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Ryl.Sqr. Collar',
                    Ear1 = 'Dodge Earring',
                    Ear2 = 'Dodge Earring',
                    Body = 'Ryl.Sqr. Chainmail',
                    Hands = 'Horomusha Kote',
                    Ring1 = 'Woodsman Ring',
                    Ring2 = 'Woodsman Ring',
                    Back = 'Nomad\'s Mantle +1',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Ryl.Sqr. Breeches',
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
    ['Ninjutsu'] = {
        Ring1 = 'Eremite\'s Ring +1',
        Ring2 = 'Eremite\'s Ring +1',
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
        Neck = 'Bird Whistle',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
    },
    ['Reward'] = {
        ['Alpha'] = {
            Head = 'Bison Warbonnet',
            Neck = 'Justice Badge',
            --Body = 'Monster Jackcoat',
            --Body = 'Beast Jackcoat',
            Hands = 'Ogre Gloves',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Aqua Ring',
            Feet = 'Beast Gaiters',
        },
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
    Hands = 'Gigas Bracelets',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Legs = 'Republic Subligar',
}
local WS_STR_DEX = {
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Legs = 'Republic Subligar',
}
local WS_HYBRID = {
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Gigas Bracelets',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Legs = 'Republic Subligar',
}
local WS_ELE = {
    Neck = 'Spike Necklace',
    Ear1 = 'Beetle Earring +1',
    Ear2 = 'Beetle Earring +1',
    Hands = 'Gigas Bracelets',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Legs = 'Republic Subligar',
}
sets['WeaponSkill'] = {
    ['Alpha'] = WS_STR,
}

-- HandleItem
sets['Item'] = {
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
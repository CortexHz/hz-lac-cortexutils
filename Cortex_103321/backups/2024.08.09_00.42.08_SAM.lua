--[===[
Author:  Cortex of HorizonXI

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Terra\'s Staff',
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Checkered Scarf',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Phantom Earring',
        Body = 'Wizard\'s Coat',
        Hands = 'Wizard\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eremite\'s Ring +1',
        Back = 'Black Cape +1',
        Waist = 'Reverend Sash',
        Legs = 'Wizard\'s Tonban',
        Feet = 'Wizard\'s Sabots',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Default',
        Weapon = 'Great Katana',
        ['W.Variant'] = 'L1',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Great Katana'] = {}
sets['Weapon']['Great Katana']['L8'] = {
    Main = 'Tachi',
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
                    Feet = 'Waders',
                },
                ['Defense'] = {
                    Feet = 'Waders',
                },
            },
        },
        ['VarToggles'] = {
            ['Fishing'] = {
                Ammo = '',
                Ranged = '',
                Body = 'Angler\'s Tunica',
                Hands = 'Angler\'s Gloves',
                Legs = 'Angler\'s Hose',
                Feet = 'Waders',
            },
            ['Working'] = {
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
    ['Resting'] = {
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Feet = 'Waders',
                },
                ['Acc'] = {
                    Feet = 'Waders',
                },
            },
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
}

-- HandlePrecast
sets['Preshot'] = {
}

-- HandlePrecast
sets['Midshot'] = {
}

-- HandleAbility
sets['Ability'] = {
}

-- HandleWeaponSkill
local WS_STR = {
    Neck = 'Spike Necklace',
    Hands = 'Wonder Mitts',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
}
sets['WeaponSkill'] = {
    ['Tachi: Enpi'] = WS_STR,
}

-- HandleItem
sets['Item'] = {
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
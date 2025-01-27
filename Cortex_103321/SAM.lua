--[===[
Author:  Cortex of HorizonXI

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Nodachi',
        Range = 'Self Bow +1',
        Ammo = 'Iron Arrow',
        Head = 'Mrc. Hachimaki',
        Neck = 'Spike Necklace',
        Ear1 = 'Bone Earring +1',
        Ear2 = 'Bone Earring +1',
        Body = 'Power Gi',
        Hands = 'Lgn. Mittens',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Warrior\'s Belt +1',
        Legs = 'Republic Subligar',
        Feet = 'Wonder Clomps',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Default',
        Weapon = 'Great Katana',
        ['W.Variant'] = 'L12',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Great Katana'] = {}
sets['Weapon']['Great Katana']['L23'] = {
    Main = 'Okanehira',
}
sets['Weapon']['Great Katana']['L27'] = {
    Main = 'Kotetsu',
}
sets['Weapon']['Great Katana']['L34'] = {
    Main = 'Homura +1',
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
                    Head = 'Centurion\'s Visor',
                    Neck = 'Spike Necklace',
                    Body = 'Ctr. Scale Mail',
                    Hands = 'Windurstian Tekko',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Wonder Clomps',
                },
                ['Defense'] = {
                    Head = 'Centurion\'s Visor',
                    Neck = 'Spike Necklace',
                    Body = 'Ctr. Scale Mail',
                    Hands = 'Windurstian Tekko',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Wonder Clomps',
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
                    Head = 'Centurion\'s Visor',
                    Neck = 'Spike Necklace',
                    Body = 'Ctr. Scale Mail',
                    Hands = 'Windurstian Tekko',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Wonder Clomps',
                },
                ['Acc'] = {
                    Head = 'Centurion\'s Visor',
                    Neck = 'Spike Necklace',
                    Body = 'Ctr. Scale Mail',
                    Hands = 'Windurstian Tekko',
                    Ring1 = 'Balance Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Republic Subligar',
                    Feet = 'Wonder Clomps',
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
    Ring1 = 'Beetle Ring +1',
    Ring2 = 'Beetle Ring +1',
}

-- HandleAbility
sets['Ability'] = {
    ['Charm'] = {
        Head = 'Noble\'s Ribbon',
        Neck = 'Bird Whistle',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
    }
}

-- HandleWeaponSkill
local WS_STR = {
    Head = 'Mrc. Hachimaki',
    Neck = 'Spike Necklace',
    Body = 'Power Gi',
    Hands = 'Wonder Mitts',
    Hands = 'Lgn. Mittens',
    Ring1 = 'Courage Ring',
    Ring2 = 'Courage Ring',
    Feet = 'Wonder Clomps',
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
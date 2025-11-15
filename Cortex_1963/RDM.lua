--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Wax Sword +1',
        Sub = 'Lauan Shield +1',
        Neck = 'Justice Badge',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Ryl.Ftm. Tunic',
        Hands = 'Elvaan Gloves',
        Ring1 = 'San d\'Orian Ring',
        Ring2 = 'Astral Ring',
        Back = 'Mist Silk Cape',
        Legs = 'Freesword\'s Slops',
        Feet = 'Solea +1',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Nation = false,
        Idle = 'Default',
        TP = 'Default',
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
        Ranged = 'Fishing',
        ['R.Variant'] = 'Tarutaru',
        Ammo = 'Worm Lure',
        TPSwaps = true,
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Sword'] = {}
sets['Weapon']['Sword']['Default'] = {
    Main = 'Bee Spatha +1',
    Sub = 'Lauan Shield +1',
}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    Main = 'Terra\'s Staff',
    Sub = 'Staff Strap',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['L48'] = {
    Main = 'Rose Wand +1',
    Sub = 'Tortoise Shield',
}
sets['Weapon']['Club']['L36'] = {
    Main = 'Oak Cudgel +1',
    Sub = "Centurion\'s Sword",
}
sets['Weapon']['Club']['L30'] = {
    Main = 'Ryl.Sqr. Mace',
    Sub = 'Ryl.Sqr. Mace',
}
sets['Weapon']['Club']['L27'] = {
    Main = 'Mace',
    Sub = 'Bone Cudgel',
}
sets['Weapon']['Club']['D18'] = {
    Main = 'Yew Wand +1',
    Sub = 'Yew Wand +1',
}
sets['Weapon']['Club']['L20'] = {
    Main = 'Mace',
    Sub = 'Yew Wand',
}
sets['Weapon']['Club']['L18'] = {
    Main = 'Yew Wand +1',
    Sub = 'Pelte',
}
sets['Weapon']['Club']['L09'] = {
    Main = 'Willow Wand',
    Sub = 'Pelte',
}

sets['Ranged'] = {}
sets['Ranged']['Fishing'] = {}
sets['Ranged']['Fishing']['Tarutaru'] = {
    Range = 'Tarutaru F. Rod',
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
                    Head = 'Warlock\'s Chapeau',
                    Neck = 'Van Pendant',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Astral Earring',
                    Body = 'Warlock\'s Tabard',
                    Hands = 'Warlock\'s Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Serket Ring',
                    Back = 'Red Cape +1',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Warlock\'s Tights',
                    Feet = 'Warlock\'s Boots',   
                },
                ['L40'] = {
                    Head = 'Straw Hat',
                    Neck = 'Van Pendant',
                    Ear1 = 'Onyx Earring',
                    Ear2 = 'Astral Earring',
                    Body = 'Ryl.Sqr. Robe',
                    Hands = 'Battle Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Vilma\'s Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Linen Slops',
                    Feet = 'Leaping Boots',   
                },
                ['L15'] = {
                    Head = 'Straw Hat',
                    Neck = 'Van Pendant',
                    Ear1 = 'Onyx Earring',
                    Ear2 = 'Onyx Earring',
                    Body = 'Worker Tunica',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Linen Slops',
                    Feet = 'Leaping Boots',   
                },
                ['L13'] = {
                    Head = 'Straw Hat',
                    Neck = 'Silver Name Tag',
                    Ear1 = 'Onyx Earring',
                    Ear2 = 'Onyx Earring',
                    Body = 'Robe',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'Eremite\'s Ring',
                    Ring2 = 'Eremite\'s Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Linen Slops',
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
    },
    ['Movement'] = {
        --Feet = 'Herald\'s Gaiters',
        ['Thresholds'] = {
            ['Area'] = {
                ['Windurst'] = {
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
        Main = 'Pluto\'s Staff',
        Head = 'Dls. Chapeau +1',
        Neck = 'Checkered Scarf',
        Ear1 = 'Sanative Earring',
        Ear2 = 'Relaxing Earring',
        Body = 'Errant Hpl.',
        Legs = 'Baron\'s Slops',
        ['Thresholds'] = {
            ['MP'] ={
                ['Low'] = {
                    threshold = 780,
                    operator = '<',
                    ['gear'] = {
                        Waist = 'Duelist\'s Belt',
                    },
                },
                ['High'] = {
                    threshold = 780,
                    operator = '>',
                    ['gear'] = {
                        Waist = 'Hierarch Belt',
                    },
                },
            },
        },
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Head = 'Warlock\'s Chapeau',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Moldavite Earring',
                    Ear2 = 'Astral Earring',
                    Body = 'Warlock\'s Tabard',
                    Hands = 'Warlock\'s Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Serket Ring',
                    Back = 'Red Cape +1',
                    Waist = 'Speed Belt',
                    Legs = 'Warlock\'s Tights',
                    Feet = 'Warlock\'s Boots',  
                },
                ['L40'] = {
                    Head = 'Straw Hat',
                    Neck = 'Van Pendant',
                    Ear1 = 'Onyx Earring',
                    Ear2 = 'Astral Earring',
                    Body = 'Ryl.Sqr. Robe',
                    Hands = 'Worker Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Vilma\'s Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Linen Slops',
                    Feet = 'Worker Boots',  
                },
                ['L15'] = {
                    Head = 'Straw Hat',
                    Neck = 'Van Pendant',
                    Ear1 = 'Onyx Earring',
                    Ear2 = 'Onyx Earring',
                    Body = 'Worker Tunica',
                    Hands = 'Battle Gloves',
                    Ring1 = 'San d\'Orian Ring',
                    Ring2 = 'Balance Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Warrior\'s Belt +1',
                    Legs = 'Linen Slops',
                    Feet = 'Leaping Boots',                  
                },
                ['L13'] = {
                    Head = 'Straw Hat',
                    Neck = 'Silver Name Tag',
                    Ear1 = 'Onyx Earring',
                    Ear2 = 'Onyx Earring',
                    Body = 'Robe',
                    Hands = 'Guerilla Gloves',
                    Ring1 = 'Eremite\'s Ring',
                    Ring2 = 'Eremite\'s Ring',
                    Back = 'Traveler\'s Mantle',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Linen Slops',
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
        Head = 'Warlock\'s Chapeau',
        Body = 'Dls. Tabard +1',
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
        Ear2 = 'Astral Earring',
        Hands = 'Zealot\'s Mitts',
    },
}

-- HandleMidcastIdle
sets['MidcastIdle'] = {
    ['Alpha'] = sets['Default'],
}

-- HandleMidcast
local ElementalDebuff = {
    Neck = 'Justice Badge',
}
-- Hastecast
local HasteCast = {
    Head = 'Warlock\'s Chapeau',
    Body = 'Dls. Tabard +1',
    Waist = 'Swift Belt',
}
sets['Midcast'] = {
    ['Alpha'] = {
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Head = 'Straw Hat',
            Neck = 'Silver Name Tag',
            Ear1 = 'Onyx Earring',
            Ear2 = 'Onyx Earring',
            Body = 'Warlock\'s Tabard',
            Hands = 'Worker Gloves',
            Back = 'Cape',
            Waist = 'Friar\'s Rope',
            Legs = 'Linen Slops',
            Feet = 'Worker Boots',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Justice Badge',
            Body = 'Warlock\'s Tabard',
            Ear2 = 'Astral Earring',
            Hands = 'Zealot\'s Mitts',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
        Ear2 = 'Astral Earring',
        Hands = 'Zealot\'s Mitts',
    },
    ['Enhancing Magic'] = {
        Neck = 'Justice Badge',
    },
    ['Dark Magic'] = {
        Neck = 'Justice Badge',
    },    
    ['Divine Magic'] = {
        Neck = 'Justice Badge',
        Hands = 'Zealot\'s Mitts',
    },
    ['Rasp'] = ElementalDebuff,
    ['Choke'] = ElementalDebuff,
    ['Frost'] = ElementalDebuff,
    ['Burn'] = ElementalDebuff,
    ['Drown'] = ElementalDebuff,
    ['Shock'] = ElementalDebuff,
    ['Elemental Magic'] = {
        Head = 'Straw Hat',
        Neck = 'Silver Name Tag',
        Ear1 = 'Onyx Earring',
        Ear2 = 'Onyx Earring',
        Body = 'Worker Tunic',
        Hands = 'Worker Gloves',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
        --Ring1 = 'Tamas Ring',
        --Ring2 = 'Vilma\'s Ring',
        Back = 'Cape',
        Waist = 'Friar\'s Rope',
        Legs = 'Linen Slops',
        Feet = 'Worker Boots',
    },
    ['Invisible'] = {
        Back = 'Skulker\'s Cape',
    },
    ['Sneak'] = {
        Back = 'Skulker\'s Cape',
    },
    ['Omega'] = {        
        ['Elemental'] = {
            ['Element'] = {
                ['Fire'] = {
                    ['VarToggles'] = {
                        ['TPSwaps'] = {
                            Main = 'Vulcan\'s Staff',
                            Sub = 'Staff Strap',
                        },
                    },
                },
                ['Earth'] = {
                    ['VarToggles'] = {
                        ['TPSwaps'] = {
                            Main = 'Terra\'s Staff',
                            Sub = 'Staff Strap',
                        },
                    },
                },
                ['Water'] = {
                    ['VarToggles'] = {
                        ['TPSwaps'] = {
                            Main = 'Neptune\'s Staff',
                            Sub = 'Staff Strap',
                        },
                    },
                },
                ['Wind'] = {
                    ['VarToggles'] = {
                        ['TPSwaps'] = {
                            Main = 'Auster\'s Staff',
                            Sub = 'Staff Strap',
                        },
                    },
                },
                ['Ice'] = {
                    ['VarToggles'] = {
                        ['TPSwaps'] = {
                            Main = 'Aquilo\'s Staff',
                            Sub = 'Staff Strap',
                        },
                    },
                },
                ['Thunder'] = {
                    ['VarToggles'] = {
                        ['TPSwaps'] = {
                            Main = 'Jupiter\'s Staff',
                            Sub = 'Staff Strap',
                        },
                    },
                },
                ['Light'] = {
                    ['VarToggles'] = {
                        ['TPSwaps'] = {
                            Main = 'Apollo\'s Staff',
                            Sub = 'Staff Strap',
                        },
                    },
                },
                ['Dark'] = {
                    ['VarToggles'] = {
                        ['TPSwaps'] = {
                            Main = 'Pluto\'s Staff',
                            Sub = 'Staff Strap',
                        },
                    },
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
        -- ['Haste'] = HasteCast,
        -- ['Refresh'] = HasteCast,
        -- ['Regen'] = HasteCast,
        -- ['Protect IV'] = HasteCast,
        -- ['Shell IV'] = HasteCast,
        -- ['Stun'] = HasteCast,
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
}

-- HandleWeaponSkill
local WS_STR = {
    Neck = 'Spike Necklace',
    Ring2 = 'Sun Ring',
}
sets['WeaponSkill'] = {
    ['Fastblade'] = WS_STR,
}

-- HandleItem
sets['Item'] = {
    ['Orange Juice'] = {
        Legs = 'Dream Trousers +1',
    },
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
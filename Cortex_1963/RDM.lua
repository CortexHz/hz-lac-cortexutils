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
        Ranged = 'Throwing',
        ['R.Variant'] = 'Default',
        Ammo = 'Worm Lure',
        TPSwaps = true,
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Sword'] = {}
sets['Weapon']['Sword']['Shield'] = {
    Main = 'Excalibur',
    Sub = 'Genbu\'s Shield',
}
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
sets['Ranged']['Throwing'] = {}
sets['Ranged']['Throwing']['Default'] = {
    Ammo = 'Hedgehog Bomb',
}
sets['Ranged']['Fishing'] = {}
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
            ['Worm Lure'] = {
                Ammo = 'Worm Lure',
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
                    Head = 'Duelist\'s Chapeau',
                    Neck = 'Van Pendant',
                    Ear1 = 'Loquac. Earring',
                    Ear2 = 'Astral Earring',
                    Body = 'Dalmatica',
                    Hands = 'Duelist\'s Gloves',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Serket Ring',
                    Back = 'Errant Cape',
                    Waist = 'Friar\'s Rope',
                    Legs = 'Crimson Cuisses',
                    Feet = 'Crimson Greaves',
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
                Body = 'Angler\'s Tunica',
                Hands = 'Angler\'s Gloves',
                Legs = 'Fisherman\'s Hose',
                Feet = 'Angler\'s Boots',
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
        Legs = 'Crimson Cuisses',
    },
    ['Resting'] = {
        Main = 'Pluto\'s Staff',
        Head = 'Duelist\'s Chapeau',
        --Neck = 'Checkered Scarf',
        Ear1 = 'Sanative Earring',
        Ear2 = 'Boroka Earring',
        Body = 'Dalmatica',
        Waist = 'Hierarch Belt',
        Legs = 'Baron\'s Slops',
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
                    Head = 'Duelist\'s Chapeau',
                    Neck = 'Peacock Charm',
                    Ear1 = 'Loquac. Earring',
                    Ear2 = 'Astral Earring',
                    Body = 'Dalmatica',
                    Hands = 'Duelist\'s Gloves',
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Serket Ring',
                    Back = 'Errant Cape',
                    Waist = 'Speed Belt',
                    Legs = 'Crimson Cuisses',
                    Feet = 'Crimson Greaves',  
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
                    Ring1 = 'San d\'Orian Ring',
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
        Ear1 = 'Loquac. Earring',
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
    Waist = 'Speed Belt',
}
sets['Midcast'] = {
    ['Alpha'] = {
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Head = 'Duelist\'s Chapeau',
            Body = 'Warlock\'s Tabard',
            Legs = 'Mahatma Slops',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Head = 'Duelist\'s Chapeau',
            Neck = 'Justice Badge',
            Body = 'Warlock\'s Tabard',
            Ear2 = 'Astral Earring',
            Hands = 'Zealot\'s Mitts',
            Legs = 'Mahatma Slops',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Justice Badge',
        Ear2 = 'Astral Earring',
        Hands = 'Zealot\'s Mitts',
    },
    ['Enhancing Magic'] = {
        Head = 'Duelist\'s Chapeau',
        Neck = 'Justice Badge',
    },
    ['Dark Magic'] = {
        Body = 'Crm. Scale Mail',
        Hands = 'Duelist\'s Gloves',
        Legs = 'Mahatma Slops',
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
        ['Thresholds'] = {
            ['MainJobSync'] = {
                ['LE70'] = {
                    threshold = 70,
                    operator = '<=',
                    ['gear'] = {
                        Head = 'Straw Hat',
                        Neck = 'Silver Name Tag',
                        Ear1 = 'Onyx Earring',
                        Ear2 = 'Onyx Earring',
                        Body = 'Worker Tunic',
                        Hands = 'Worker Gloves',
                        Ring1 = 'Eremite\'s Ring',
                        Ring2 = 'Eremite\'s Ring',
                        Back = 'Cape',
                        Waist = 'Friar\'s Rope',
                        Legs = 'Linen Slops',
                        Feet = 'Worker Boots',
                    },
                },
                ['GT70'] = {
                    threshold = 70,
                    operator = '>',
                    ['gear'] = {
                        Head = 'Warlock\'s Chapeau',
                        Neck = 'Silver Name Tag',
                        Ear1 = 'Moldavite Earring',
                        Ear2 = 'Onyx Earring',
                        Body = 'Crm. Scale Mail',
                        Hands = 'Duelist\'s Gloves',
                        Ring1 = 'Tamas Ring',
                        Ring2 = 'Vilma\'s Ring',
                        Back = 'Cape',
                        Waist = 'Friar\'s Rope',
                        Legs = 'Duelist\'s Tights',
                        Feet = 'Duelist\'s Boots',
                    },
                },
            },
        },
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
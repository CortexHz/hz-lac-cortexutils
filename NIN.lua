--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    -- /lac addset export
    ['export'] = {
        Feet = 'Waders',
    },
};

-- Strategies
-- /lac fwd Strategy
-- /lac fwd Strategy ACC
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Default',
        TP = 'Default',
        WS = 'Default',
        TPSwaps = false,
        Weapon = 'Katana',
        ['W.Variant'] = 'Default',
    },
    ['ACC'] = {
        Idle = 'Default',
        TP = 'ACC',
        WS = 'ACC',
        TPSwaps = false,
        Weapon = 'Katana',
        ['W.Variant'] = 'Default',
    },
    ['EVA'] = {
        Idle = 'EVA',
        TP = 'EVA',
        WS = 'Default',
        TPSwaps = false,
        Weapon = 'Katana',
        ['W.Variant'] = 'Default',
    },
    ['PDT'] = {
        Idle = 'PDT',
        TP = 'PDT',
        WS = 'MACC',
        TPSwaps = true,
        Weapon = 'Staff',
        ['W.Variant'] = 'PDT',
    },
    ['MDT'] = {
        Idle = 'MDT',
        TP = 'MDT',
        WS = 'MACC',
        TPSwaps = true,
        Weapon = 'Staff',
        ['W.Variant'] = 'PDT',
    },
    ['EVA2'] = {
        Idle = 'EVA',
        TP = 'EVA',
        WS = 'Default',
        TPSwaps = true,
        Weapon = 'Staff',
        ['W.Variant'] = 'Evasion',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Katana'] = {}
sets['Weapon']['Katana']['Default'] = {
    Main = 'Yoshimitsu',
    Sub = 'Unji',
    Ammo = 'Bomb Core',
}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['PDT'] = {
    Main = 'Earth Staff',
    Ammo = 'Bomb Core',
}
sets['Weapon']['Staff']['Evasion'] = {
    Main = 'Wind Staff',
    Ammo = 'Bomb Core',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['None'] = {}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}

-- HandleDefault
-- /lac fwd Idle
-- /lac fwd TP
local Shinobi = {
    Head = '',
    Ear1 = '',
    Hands = '', 
    Waist = '',
    Feet = '',
}
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Head = 'Panther Mask +1',
                    Neck = 'Hope Torque',
                    Ear1 = 'Brutal Earring',
                    Ear2 = 'Stealth Earring',
                    Body = 'War Shinobi Gi',
                    Hands = 'Kog. Tekko +1',
                    Ring1 = 'Bomb Queen Ring',
                    Ring2 = 'Rajas Ring',
                    Back = 'Gigant Mantle',
                    Waist = 'Swift Belt',
                    Legs = 'Byakko\'s haidate',
                    Feet = 'Fuma Sune-Ate',
                },
                ['PDT'] = {
                    Head = 'Genbu\'s Kabuto',
                    Neck = 'Peacock Amulet',
                    Ear1 = 'Pigeon Earring',
                    Ear2 = 'Ethereal Earring',
                    Body = 'Arhat\'s Gi +1',
                    Hands = 'Seiryu\'s Kote',
                    Ring1 = 'Bomb Queen Ring',
                    Ring2 = 'Jelly Ring',
                    Back = 'Gigant Mantle',
                    Waist = 'Warwolf Belt',
                    Legs = 'Byakko\'s haidate',
                    Feet = 'Fuma Sune-Ate',
                },
                ['MDT'] = {
                    Head = 'Genbu\'s Kabuto',
                    Neck = 'Rep.Gold Medal',
                    Ear1 = 'Merman\'s Earring',
                    Ear2 = 'Merman\'s Earring',
                    Body = 'Arhat\'s Gi +1',
                    Hands = 'Seiryu\'s Kote',
                    Ring1 = 'Merman\'s Ring',
                    Ring2 = 'Merman\'s Ring',
                    Back = 'Resentment Cape',
                    Waist = 'Warwolf Belt',
                    Legs = 'Byakko\'s haidate',
                    Feet = 'Suzaku\'s sune-ate',
                },
                ['EVA'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Evasion Torque',
                    Ear1 = 'Ethereal Earring',
                    Ear2 = 'Platinum Earring',
                    Body = 'Scp. Harness +1',
                    Hands = 'Seiryu\'s Kote',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Rajas Ring',
                    Back = 'Boxer\'s Mantle',
                    Waist = 'Scouter\'s Rope',
                    Legs = 'Koga Hakama',
                    Feet = 'Rasetsu Sune-Ate',
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
        ['Thresholds'] = {
            ['HPP'] = {
                ['LOW'] = {
                    threshold = 50,
                    operator = '<',
                    ['gear'] = {
                        Waist = 'Muscle Belt',
                    },
                },
            },
        },
        ['Movement'] = {
            Hands = 'Kog. Tekko +1',
            ['Thresholds'] = {
                ['Time'] = {
                    ['Dusk'] = {
                        threshold = 17,
                        operator = '>',
                        ['gear'] = {
                            Feet = 'Nin. Kyahan +1',
                        },
                    },
                    ['Dawn'] = {
                        threshold = 7,
                        operator = '<',
                        ['gear'] = {
                            Feet = 'Nin. Kyahan +1',
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
        ['VarToggles'] = {
            ['TPSwaps'] = {
                Main = 'Dark Staff',
            },
        },
        Ear1 = 'Sanative Earring',
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Head = 'Panther Mask +1', -- 3%
                    Neck = 'Peacock Amulet',
                    Ear1 = 'Brutal Earring', 
                    Ear2 = 'Stealth Earring', -- 5% DW
                    Body = 'Nin. Chainmail +1', -- 5% DW
                    Hands = 'Dusk Gloves', -- 3%
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Forager\'s Mantle',
                    Waist = 'Swift Belt', -- 4%
                    Legs = 'Byakko\'s haidate', -- 5%
                    Feet = 'Fuma Sune-Ate', -- 3%
                },
                ['ACC'] = {
                    Head = 'Panther Mask +1', -- 3%
                    Neck = 'Peacock Amulet',
                    Ear1 = 'Brutal Earring', 
                    Ear2 = 'Stealth Earring', -- 5% DW
                    Body = 'Haubergeon', -- 5% DW
                    Hands = 'Dusk Gloves', -- 3%
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring',
                    Back = 'Forager\'s Mantle',
                    Waist = 'Swift Belt', -- 4%
                    Legs = 'Byakko\'s haidate', -- 5%
                    Feet = 'Fuma Sune-Ate', -- 3%
                },
                ['PDT'] = {
                    Head = 'Genbu\'s Kabuto',
                    Neck = 'Peacock Amulet',
                    Ear1 = 'Pigeon Earring',
                    Ear2 = 'Ethereal Earring',
                    Body = 'Arhat\'s Gi +1',
                    Hands = 'Seiryu\'s Kote',
                    Ring1 = 'Bomb Queen Ring',
                    Ring2 = 'Jelly Ring',
                    Back = 'Gigant Mantle',
                    Waist = 'Warwolf Belt',
                    Legs = 'Byakko\'s haidate',
                    Feet = 'Fuma Sune-Ate',
                    ['Thresholds'] = {
                        ['HPP'] = {
                            ['LOW'] = {
                                threshold = 50,
                                operator = '<',
                                ['gear'] = {
                                    Waist = 'Muscle Belt',
                                },
                            },
                        },
                    },
                },
                ['MDT'] = {
                    Head = 'Genbu\'s Kabuto',
                    Neck = 'Rep.Gold Medal',
                    Ear1 = 'Merman\'s Earring',
                    Ear2 = 'Merman\'s Earring',
                    Body = 'Arhat\'s Gi +1',
                    Hands = 'Seiryu\'s Kote',
                    Ring1 = 'Merman\'s Ring',
                    Ring2 = 'Merman\'s Ring',
                    Back = 'Resentment Cape',
                    Waist = 'Warwolf Belt',
                    Legs = 'Byakko\'s haidate',
                    Feet = 'Suzaku\'s sune-ate',
                    ['Thresholds'] = {
                        ['HPP'] = {
                            ['LOW'] = {
                                threshold = 50,
                                operator = '<',
                                ['gear'] = {
                                    Waist = 'Muscle Belt',
                                },
                            },
                        },
                    },
                },
                ['EVA'] = {
                    Head = 'Emperor Hairpin',
                    Neck = 'Evasion Torque',
                    Ear1 = 'Ethereal Earring',
                    Ear2 = 'Platinum Earring',
                    Body = 'Scp. Harness +1',
                    Hands = 'Seiryu\'s Kote',
                    Ring1 = 'Toreador\'s Ring',
                    Ring2 = 'Rajas Ring',
                    Back = 'Boxer\'s Mantle',
                    Waist = 'Scouter\'s Rope',
                    Legs = 'Koga Hakama',
                    Feet = 'Rasetsu Sune-Ate',
                },
                ['MACC'] = {
                    Head = 'Panther Mask +1', -- 2%
                    Neck = 'Peacock Amulet', 
                    Ear1 = 'Brutal Earring',
                    Ear2 = 'Stealth Earring', -- 5% DW
                    Body = 'Koga Chainmail',
                    Hands = 'Dusk Gloves', -- 3%
                    Ring1 = 'Rajas Ring',
                    Ring2 = 'Toreador\'s Ring', 
                    Back = 'Forager\'s Mantle',
                    Waist = 'Swift Belt', -- 4%
                    Legs = 'Byakko\'s haidate', -- 5%
                    Feet = 'Fuma Sune-Ate', -- 3%
                },
            },
        },
        ['Thresholds'] = {
            ['HPP'] = {
                ['NLow'] = {
                    threshold = 25,
                    operator = '>',
                    ['gear'] = {
                        ['Thresholds'] = {
                            ['Time'] = {
                                ['Dusk'] = {
                                    threshold = 17,
                                    operator = '>',
                                    ['gear'] = {
                                        Hands = 'Kog. Tekko +1',
                                    },
                                },
                                ['Dawn'] = {
                                    threshold = 7,
                                    operator = '<',
                                    ['gear'] = {
                                        Hands = 'Kog. Tekko +1',
                                    },
                                },
                            },
                            ['HPP'] = {
                                ['NHi'] = {
                                    threshold = 75,
                                    operator = '<',
                                    ['gear'] = {
                                        Ring2 = 'Shinobi Ring',
                                    },
                                },
                            },
                        },
                    },
                },
                ['NLow'] = {
                    threshold = 25,
                    operator = '<',
                    ['gear'] = {
                        ['VarCycles'] = {
                            ['TP'] = {
                                ['Default'] = Shinobi,
                                ['ACC'] = Shinobi,
                                ['EVA'] = Shinobi,
                            },
                        },
                    },
                },
            },
        },
        ['Buff'] = {
            ['Aftermath'] = {
                Ammo = 'Nokizaru Shuriken',
            }, 
        },
    },
    ['Thresholds'] = {
        ['SubJob'] = {
            ['Mage'] ={
                threshold = T{'RDM','BLM', 'WHM', 'BLU', 'SMN'},
                operator = 'contains',
                ['gear'] = {
                    ['Thresholds'] = {
                        ['MP'] = {
                            ['Refresh'] ={
                                threshold = 41,
                                operator = '<',
                                ['gear'] = {
                                    Body = 'Blue Cotehardie',
                                },
                            },
                        },
                    },
                },
            },
        },
    },
    ['Omega'] = {   
    },
}

-- HandlePrecast
sets['Precast'] = {
    Back = 'Warlock\'s Mantle',
    Ear1 = 'Loquac. Earring',
}

-- Enmity set to use in midcast and abilities
local Enmity = { --29
    Ammo = 'Nokizaru Shuriken', --2
    Head = 'Yasha Jinpachi', --2
    Neck = 'Harmonia\'s Torque', --3
    Ear1 = 'Eris\' Earring', --2
    Ear2 = 'Eris\' Earring', --2
    Body = 'Arhat\'s Gi +1', --4
    Hands = 'Yasha Tekko', --2
    Ring1 = 'Bomb Queen Ring',
    Ring2 = 'Mermaid Ring', --2
    Back = 'Resentment Cape', --2
    Waist = 'Warwolf Belt', --3
    Legs = 'Arhat\'s Hakama +1', --3
    Feet = 'Yasha Sune-Ate', --2
}
local Enfeebling = {
    Ammo = 'Nokizaru Shuriken', 
    Head = 'Ninja Hatsuburi',
    Neck = 'Ninjutsu Torque',
    Ear1 = 'Eris\' Earring',
    Ear2 = 'Stealth Earring',
    Body = 'Yasha Samue',
    Hands = 'Kog. Tekko +1',
    Ring1 = 'Genius Ring',
    Ring2 = 'Genius Ring',
    Back = 'Resentment Cape',
    Waist = 'Warwolf Belt',
    Legs = 'Yasha Hakama',
    Feet = 'Koga Kyahan',
}
-- HandleMidcast
sets['Midcast'] = {
    ['Alpha'] = {
    },
    ['Utsusemi: Ni'] = {
        Ammo = 'Nokizaru Shuriken',
        Head = 'Panther Mask +1',
        Neck = 'Evasion Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Eris\' Earring',
        Body = 'Yasha Samue', --10%
        Hands = 'Dusk Gloves',
        Ring1 = 'Bomb Queen Ring',
        Ring2 = 'Mermaid Ring',
        Back = 'Resentment Cape',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s haidate',
        Feet = 'Fuma Sune-Ate',
    },
    ['Utsusemi: Ichi'] = {
        Ammo = 'Nokizaru Shuriken',
        Head = 'Yasha Jinpachi', --5%
        Neck = 'Willpower Torque', --5%
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Eris\' Earring',
        Body = 'Yasha Samue', -- 10%
        Hands = 'Yasha Tekko', -- 3%
        Ring1 = 'Bomb Queen Ring',
        Ring2 = 'Mermaid Ring',
        Back = 'Resentment Cape',
        Waist = 'Druid\'s rope', -- 10% 
        Legs = 'Yasha Hakama', -- 2%
        Feet = 'Yasha Sune-Ate', -- 5%
        ['VarToggles'] = {
            ['TPSwaps'] = {
                Main = 'Nikkariaoe'
            },
        },
    },
    ['Kurayami: Ni'] = Enfeebling,
    ['Hojo: Ni'] = Enfeebling,
    ['Jubaku: Ichi'] = Enfeebling,
    ['Ninjitsu'] = {
        Ammo = 'Nokizaru Shuriken',
        Head = 'Yasha Jinpachi',
        Neck = 'Ninjutsu Torque',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Stealth Earring',
        Body = 'Yasha Samue',
        Hands = 'Kog. Tekko +1',
        Ring1 = 'Genius Ring',
        Ring2 = 'Genius Ring',
        Back = 'Resentment Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Yasha Hakama',
        Feet = 'Koga Kyahan',
        ['Thresholds'] = {
            ['MppAftercast'] = {
                ['UNeck'] = {
                    threshold = 51,
                    operator = '<',
                    ['gear'] = {
                        Neck = 'Uggalepih Pendant',
                    },
                },
            },
        },
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            ['Alpha'] = Enmity,
            ['Gravity'] = { --incomplete
                Ammo = 'Nokizaru Shuriken', --2
                Head = 'Yasha Jinpachi', --2
                Neck = 'Harmonia\'s Torque', --3
                Ear1 = 'Eris\' Earring', --2
                Ear2 = 'Eris\' Earring', --2
                Body = 'Arhat\'s Gi +1', --4
                Hands = 'Yasha Tekko', --2
                Ring1 = 'Toreador\'s Ring',
                Ring2 = 'Mermaid Ring', --2
                Back = 'Resentment Cape', --2
                Waist = 'Warwolf Belt', --3
                Legs = 'Arhat\'s Hakama +1', --3
                Feet = 'Yasha Sune-Ate', --2
            },
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = { --incomplete
            ['Alpha'] = Enmity,
            ['Silence'] = {
                Ammo = 'Nokizaru Shuriken',
                Head = 'Yasha Jinpachi',
                Neck = 'Harmonia\'s Torque',
                Ear1 = 'Moldavite Earring',
                Ear2 = 'Stealth Earring',
                Body = 'Yasha Samue',
                Hands = 'Kog. Tekko +1',
                Ring1 = 'Genius Ring',
                Ring2 = 'Mermaid Ring',
                Back = 'Resentment Cape',
                Waist = 'Warwolf Belt',
                Legs = 'Yasha Hakama',
                Feet = 'Koga Kyahan',
            },
        },
    },
    ['Healing Magic'] = { -- incomplete
        Ammo = 'Nokizaru Shuriken',
        Head = 'Genbu\'s Kabuto', --5%
        Neck = 'Enhancing Torque', --5%
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Eris\' Earring',
        Body = 'Yasha Samue', -- 10%
        Hands = 'Yasha Tekko', -- 3%
        Ring1 = 'Aquamarine Ring',
        Ring2 = 'Aquamarine Ring',
        Back = 'Resentment Cape',
        Waist = 'Druid\'s rope', -- 10% 
        Legs = 'Yasha Hakama', -- 2%
        Feet = 'Yasha Sune-Ate', -- 5%
    },
    ['Enhancing Magic'] = { -- incomplete
        Ammo = 'Nokizaru Shuriken',
        Head = 'Genbu\'s Kabuto', --5%
        Neck = 'Enhancing Torque', --5%
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Eris\' Earring',
        Body = 'Yasha Samue', -- 10%
        Hands = 'Yasha Tekko', -- 3%
        Ring1 = 'Aquamarine Ring',
        Ring2 = 'Aquamarine Ring',
        Back = 'Resentment Cape',
        Waist = 'Druid\'s rope', -- 10% 
        Legs = 'Yasha Hakama', -- 2%
        Feet = 'Yasha Sune-Ate', -- 5%
    },
    ['Dark Magic'] = {
        ['Alpha'] = Enmity,
        Neck = 'Dark Torque',
    },
    ['Omega'] = {
        ['VarToggles'] = {
            ['TPSwaps'] = {
                ['Elemental'] = {
                    ['Element'] = {
                        ['Fire'] = {
                            Main = 'Fire Staff',
                        },
                        ['Earth'] = {
                            Main = 'Earth Staff',
                        },
                        ['Water'] = {
                            Main = 'Water Staff',
                        },
                        ['Wind'] = {
                            Main = 'Wind Staff',
                        },
                        ['Ice'] = {
                            Main = 'Ice Staff',
                        },
                        ['Thunder'] = {
                            Main = 'Thunder Staff',
                        },
                        ['Light'] = {
                            Main = 'Light Staff',
                        },
                        ['Dark'] = {
                            Main = 'Dark Staff',
                        },
                    },
                },
            },
        },
        --['Elemental'] = {
            -- ['Day'] = {
                -- ClashCheck = true,
                -- ['Fire'] = {
                    -- Waist = 'Karin Obi',
                -- },
                -- ['Earth'] = {
                    -- Waist = 'Dorin Obi',
                -- },
                -- ['Water'] = {
                    -- Waist = 'Suirin Obi',
                -- },
                -- ['Wind'] = {
                    -- Waist = 'Furin Obi',
                -- },
                -- ['Ice'] = {
                    -- Waist = 'Hyorin Obi',
                -- },
                -- ['Thunder'] = {
                    -- Waist = 'Rairin Obi',
                -- },
                -- ['Light'] = {
                    -- Waist = 'Korin Obi',
                -- },
                -- ['Dark'] = {
                    -- Waist = 'Anrin Obi',
                -- },
            -- },
            -- ['Weather'] = {
                -- ClashCheck = true,
                -- ['Fire'] = {
                    -- Waist = 'Karin Obi',
                -- },
                -- ['Earth'] = {
                    -- Waist = 'Dorin Obi',
                -- },
                -- ['Water'] = {
                    -- Waist = 'Suirin Obi',
                -- },
                -- ['Wind'] = {
                    -- Waist = 'Furin Obi',
                -- },
                -- ['Ice'] = {
                    -- Waist = 'Hyorin Obi',
                -- },
                -- ['Thunder'] = {
                    -- Waist = 'Rairin Obi',
                -- },
                -- ['Light'] = {
                    -- Waist = 'Korin Obi',
                -- },
                -- ['Dark'] = {
                    -- Waist = 'Anrin Obi',
                -- },
            -- },
        --},
    },
}

-- HandlePreshot
sets['Preshot'] = {
    -- Ammo = '',
    -- Head = '',
    -- Neck = '',
    -- Ear1 = '',
    -- Ear2 = '',
    -- Body = '',
    -- Hands = '',
    -- Ring1 = '',
    -- Ring2 = '',
    -- Back = '',
    -- Waist = '',
    -- Legs = '',
    -- Feet = '',
}

-- HandleMidshot
sets['Midshot'] = {
    -- Ammo = '',
    -- Head = '',
    -- Neck = '',
    -- Ear1 = '',
    -- Ear2 = '',
    -- Body = '',
    -- Hands = '',
    -- Ring1 = '',
    -- Ring2 = '',
    -- Back = '',
    -- Waist = '',
    -- Legs = '',
    -- Feet = '',
    ['VarToggles'] = {
        ['TPSwaps'] = {
            Main = 'Fire Staff',
        },
    },
}

-- HandleAbility
sets['Ability'] = {
    ['Alpha'] = Enmity,
    ['Provoke'] = Enmity,
}

-- HandleWeaponSkill
-- -- /lac fwd WSBase
sets['WeaponSkill'] = {
    ['VarCycles'] = {
        ['WSBase'] = {
            ['Default'] = {
                Ammo = 'Bomb Core',
                Head = 'Shr.Znr.Kabuto',
                Neck = 'Hope torque',
                Ear1 = 'Brutal Earring',
                Ear2 = 'Ethereal Earring',
                Body = 'Haubergeon',
                Hands = 'Nin. Tekko +1',
                Ring1 = 'Rajas Ring',
                Ring2 = 'Thunder Ring',
                Back = 'Forager\'s Mantle',
                Waist = 'Warwolf Belt',
                Legs = 'Byakko\'s haidate',
                Feet = 'Shr. Sune-Ate',
            },
            ['ACC'] = {
                Ammo = 'Bomb Core',
                Head = 'Shr.Znr.Kabuto',
                Neck = 'Hope torque',
                Ear1 = 'Brutal Earring',
                Ear2 = 'Stealth Earring',
                Body = 'Haubergeon',
                Hands = 'Nin. Tekko +1',
                Ring1 = 'Rajas Ring',
                Ring2 = 'Toreador\'s Ring',
                Back = 'Forager\'s Mantle',
                Waist = 'Life Belt',
                Legs = 'Byakko\'s haidate',
                Feet = 'Shr. Sune-Ate',
            },
            ['MACC'] = {
                Ammo = 'Bomb Core',
                Head = 'Shr.Znr.Kabuto',
                Neck = 'Hope Torque',
                Ear1 = 'Brutal Earring',
                Ear2 = 'Stealth Earring',
                Body = 'Haubergeon',
                Hands = 'Nin. Tekko +1',
                Ring1 = 'Rajas Ring',
                Ring2 = 'Thunder Ring',
                Back = 'Forager\'s Mantle',
                Waist = 'Warwolf Belt',
                Legs = 'Byakko\'s haidate',
                Feet = 'Shr. Sune-Ate',
            },
        },
    },
    ['Thresholds'] = {
        ['Time'] = {
            ['Dusk'] = {
                threshold = 17,
                operator = '>',
                ['gear'] = {
                    Hands = 'Kog. Tekko +1',
                },
            },
            ['Dawn'] = {
                threshold = 7,
                operator = '<',
                ['gear'] = {
                    Hands = 'Kog. Tekko +1',
                },
            },
        },
    },
    ['Blade: Jin'] = {
        Neck = 'Breeze Gorget',
        ['VarCycles'] = {
            ['WSBase'] = {
                ['Default'] = {
                    Neck = 'Hope Torque',
                },
                ['ACC'] = {
                    Neck = 'Hope Torque',
                },
            },
        },
    },
    ['Blade: Ku'] = {
        Neck = 'Shadow Gorget',
    },
    ['Blade: Ten'] = {
        Neck = 'Shadow Gorget',
    },
}

-- HandleItem
sets['Item'] = {
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
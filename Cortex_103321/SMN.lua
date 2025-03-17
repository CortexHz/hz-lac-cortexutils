--[===[

SEE cortexutils.lua FOR FULL Documentation

]===]--

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Terra\'s Staff',
        Ammo = 'Fortune Egg',
        Head = 'Smn. Horn +1',
        Neck = 'Smn. Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Beastly Earring',
        Body = 'Austere Robe',
        Hands = 'Smn. Bracers +1',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Ether Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Summoner\'s Spats',
        Feet = 'Smn. Pigaches +1',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Defense',
        TP = 'Default',
        SmnGear = 'Default',
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
    },
    ['L65'] = {
        Idle = 'L65',
        TP = 'Default',
        SmnGear = 'L65',
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    Main = 'Terra\'s Staff',
}
sets['Weapon']['Staff']['Treat'] = {
    Main = 'Treat Staff II',
}
sets['Weapon']['Staff']['Trick'] = {
    Main = 'Kukulcan\'s Staff',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['Warp'] = {
    Main = 'Warp Cudgel',
}
sets['Weapon']['Club']['Hammer'] = {
    Main = 'Club Hammer',
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Ammo = 'Fortune Egg',
                    Head = 'Smn. Horn +1',
                    Neck = 'Smn. Torque',
                    Ear1 = 'Novia Earring',
                    Ear2 = 'Beastly Earring',
                    Body = 'Austere Robe',
                    Hands = 'Smn. Bracers +1',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Ether Ring',
                    Back = 'Summoner\'s Cape',
                    Waist = 'Hierarch Belt',
                    Legs = 'Evoker\'s Spats',
                    Feet = 'Smn. Pigaches +1',
                },
                ['Defense'] = {
                    Ammo = 'Fortune Egg',
                    Head = 'Smn. Horn +1',
                    Neck = 'Smn. Torque',
                    Ear1 = 'Novia Earring',
                    Ear2 = 'Beastly Earring',
                    Body = 'Austere Robe',
                    Hands = 'Smn. Bracers +1',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Ether Ring',
                    Back = 'Summoner\'s Cape',
                    Waist = 'Hierarch Belt',
                    Legs = 'Summoner\'s Spats',
                    Feet = 'Smn. Pigaches +1',
                },
                ['L65'] = {
                    Ammo = 'Fortune Egg',
                    Head = 'Penance Hat',
                    Neck = 'Smn. Torque',
                    Ear1 = 'Phantom Earring',
                    Ear2 = 'Phantom Earring',
                    Body = 'Austere Robe',
                    Hands = 'Austere Cuffs',
                    Ring1 = 'Tamas Ring',
                    Ring2 = 'Ether Ring',
                    Waist = 'Penitent\'s Rope',
                    Legs = 'Summoner\'s Spats',
                    Feet = 'Austere Sabots',
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
                    threshold = T{'Heavens Tower', 'Port Windurst', 'Windurst Waters', 'Windurst Walls', 'Windurst Woods'},
                    operator = 'contains',
                    ['gear'] = {
                        Body = 'Federation Aketon',
                    },
                },
            },
        },
    },
    ['Resting'] = {
        Main = 'Pluto\'s Staff',
        Neck = 'Checkered Scarf',
        Ear1 = 'Sanative Earring',
        Ear2 = 'Relaxing Earring',
        --Body = 'Seer\'s Tunic +1',
        Body = 'Errant Hpl.',
        --Body = 'Black Cloak',
        Waist = 'Hierarch Belt',
        Legs = 'Baron\'s Slops',
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {

                },
                ['Acc'] = {

                },
            },
        },
    },
    ['Pet'] = {
        ['Ifrit'] = {
            Main = 'Vulcan\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Fire'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Fire Spirit'] = {
            Main = 'Vulcan\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Fire'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Titan'] = {
            Main = 'Terra\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Earth'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Earth Spirit'] = {
            Main = 'Terra\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Earth'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Leviathan'] = {
            Main = 'Neptune\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Water'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Water Spirit'] = {
            Main = 'Neptune\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Water'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Garuda'] = {
            Main = 'Auster\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Wind'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Wind Spirit'] = {
            Main = 'Auster\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Wind'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Shiva'] = {
            Main = 'Aquilo\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Ice'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Ice Spirit'] = {
            Main = 'Aquilo\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Ice'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Ramuh'] = {
            Main = 'Jupiter\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Thunder'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Thunder Spirit'] = {
            Main = 'Jupiter\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Thunder'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Carbuncle'] = {
            Main = 'Apollo\'s Staff',
            Hands = 'Carbuncle Mitts',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Light'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Light Spirit'] = {
            Main = 'Apollo\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Light'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Fenrir'] = {
            Main = 'Pluto\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Dark'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Diabolos'] = {
            Main = 'Pluto\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Dark'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['Dark Spirit'] = {
            Main = 'Pluto\'s Staff',
            ['Elemental'] = {
                ['Weather'] = {
                    ['Dark'] = {
                        Head = 'Smn. Horn +1',
                    },
                },
            },
        },
        ['VarCycles'] = {
            ['SmnGear'] = {
                ['Default'] = {
                    --Head = 'Penance Hat',
                    Neck = 'Smn. Torque',
                    Body = 'Austere Robe',
                    ['Engaged'] = {
                        Neck = 'Smn. Torque',
                        Body = 'Austere Robe',
                        Legs = 'Evoker\'s Spats',
                        Feet = 'Smn. Pigaches +1',
                    },
                    ['MobSkill'] = {
                        Head = 'Evoker\'s Horn',
                        Neck = 'Smn. Torque',
                        Ear2 = 'Beastly Earring',
                        Hands = 'Smn. Bracers +1',
                        Legs = 'Evoker\'s Spats',
                        Feet = 'Smn. Pigaches +1',
                        ['Earthen Ward'] = {
                            Legs = 'Austere Slops',
                            Feet = 'Austere Sabots',
                        },
                    },
                },
                ['L65'] = {
                    Neck = 'Smn. Torque',
                    Body = 'Austere Robe',
                    Hands = 'Austere Cuffs',
                    ['Engaged'] = {
                        Head = 'Evoker\'s Horn',
                        Legs = 'Evoker\'s Spats',
                    },
                    ['MobSkill'] = {
                        Head = 'Evoker\'s Horn',
                        Neck = 'Smn. Torque',
                        Legs = 'Evoker\'s Spats',
                        Feet = 'Austere Sabots',
                        ['Earthen Ward'] = {
                            Legs = 'Austere Slops',
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
    ['Alpha'] = {
        Ear2 = 'Loquac. Earring',
        Feet = 'Rostrum Pumps',
    },
}

-- HandleMidcast
sets['Midcast'] = {
    ['Alpha'] = {
    },
    ['Summoning'] = {
        Body = 'Austere Robe',
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Ammo = 'Phtm. Tathlum',
            Neck = 'Enfeebling Torque',
            --Ring1 = 'Tamas Ring',
            Ring1 = 'Tamas Ring',
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Neck = 'Enfeebling Torque',
            Hands = 'Devotee\'s Mitts',
            --Ring1 = 'Tamas Ring',
            Ring1 = 'Tamas Ring',
            Ring2 = 'Aqua Ring',
        },
    },
    ['Healing Magic'] = {
        Neck = 'Promise Badge',
        Hands = 'Devotee\'s Mitts',
        --Ring1 = 'Tamas Ring',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Aqua Ring',
    },
    ['Enhancing Magic'] = {
        Neck = 'Promise Badge',
        Hands = 'Devotee\'s Mitts',
        --Ring1 = 'Tamas Ring',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Aqua Ring',
    },
    ['Omega'] = {
        ['Elemental'] = {
            ['Element'] = {
                ['Fire'] = {
                    Main = 'Vulcan\'s Staff',
                },
                ['Earth'] = {
                    Main = 'Terra\'s Staff',
                },
                ['Water'] = {
                    Main = 'Neptune\'s Staff',
                },
                ['Wind'] = {
                    Main = 'Auster\'s Staff',
                },
                ['Ice'] = {
                    Main = 'Aquilo\'s Staff',
                },
                ['Thunder'] = {
                    Main = 'Jupiter\'s Staff',
                },
                ['Light'] = {
                    Main = 'Apollo\'s Staff',
                },
                ['Dark'] = {
                    Main = 'Pluto\'s Staff',
                },
            },
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
        },
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
    ['VarCycles'] = {
        ['SmnGear'] = {
            ['Default'] = {
                ['Blood Pact: Rage'] = {
                    Head = 'Penance Hat',
                    Body = 'Austere Robe',
                    Hands = 'Smn. Bracers +1',
                    Legs = 'Summoner\'s Spats',
                    Feet = 'Smn. Pigaches +1',
                },
                ['Blood Pact: Ward'] = {
                    Head = 'Penance Hat',
                    Body = 'Austere Robe',
                    Hands = 'Smn. Bracers +1',
                    Legs = 'Summoner\'s Spats',
                    Feet = 'Smn. Pigaches +1',
                },
            },
            ['L65'] = {
                ['Blood Pact: Rage'] = {
                    Head = 'Penance Hat',
                    Body = 'Austere Robe',
                    Hands = 'Austere Cuffs',
                    Legs = 'Summoner\'s Spats',
                    Feet = 'Austere Sabots',
                },
                ['Blood Pact: Ward'] = {
                    Head = 'Penance Hat',
                    Body = 'Austere Robe',
                    Hands = 'Austere Cuffs',
                    Legs = 'Summoner\'s Spats',
                    Feet = 'Austere Sabots',
                },
            },
        },
    },

}

-- HandleWeaponSkill
local WS_STR = {
    Neck = 'Spike Necklace',
    Ring2 = 'Sun Ring',
}
sets['WeaponSkill'] = {
    ['Heavy Swing'] = WS_STR,
}

-- HandleItem
sets['Item'] = {
}

profile.Sets = sets;

profile.Packer = {
};

return profile;
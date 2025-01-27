local profile = {};
local varhelper = gFunc.LoadFile('common/varhelper_modded.lua');
local sets = {
    -- Weapons
    ['Weapon'] = {},
    ['Idle'] = {},
    ['TP'] = {},


    ['Mage_Sub'] = {
        Head = 'Ogre Mask',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Ring1 = 'Tamas Ring',
    },
    
    -- Ability
    ['Charm'] = {
        Head = 'Beast Helm',
        Neck = 'Bird Whistle',
        Body = 'Beast Jackcoat',
        Hands = 'Beast Gloves',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
        Waist = 'Corsette +1',
        Legs = 'Beast Trousers',
        Feet = 'Beast Gaiters',
    },

    ['Reward'] = {
        Neck = 'Justice Badge',
        Hands = 'Ogre Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Saintly Ring',
        Feet = 'Beast Gaiters',
    },
    
    -- WS
    ['WS_STR'] = {
        Head = 'Alumine Salade',
        Neck = 'Spike Necklace',
        Body = 'Haubergeon',
        Hands = 'Wonder Mitts',
        --Ring1 = 'Courage Ring',
        --Ring2 = 'Courage Ring',
        Ring1 = 'Sun Ring',
        Ring2 = 'Sun Ring',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Alumine Sollerets',
    },
    ['WS_STR_DEX'] = {
        Head = 'Alumine Salade',
        Neck = 'Spike Necklace',
        Body = 'Haubergeon',
        Hands = 'Beast Gloves',
        Ring1 = 'Fluorite Ring',
        Ring2 = 'Fluorite Ring',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Alumine Sollerets',
    },
    ['WS_STR_VIT'] = {
        Head = 'Alumine Salade',
        Neck = 'Spike Necklace',
        Body = 'Haubergeon',
        Hands = 'Wonder Mitts',
        Ring1 = 'Sun Ring',
        Ring2 = 'Sun Ring',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Alumine Sollerets',
    },
    ['WS_HYBRID'] = {
        Neck = 'Spike Necklace',
        Body = 'Haubergeon',
        Hands = 'Wonder Mitts',
        Ring1 = 'Sun Ring',
        Ring2 = 'Sun Ring',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Alumine Sollerets',
    },
    ['WS_ELE'] = {
        Neck = 'Spike Necklace',
        Body = 'Haubergeon',
        Hands = 'Wonder Mitts',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Alumine Sollerets',
    },
    
    
    -- FC
    ['FastCast'] = {
        Waist = 'Swift Belt',
    },
    
    -- Ninjutsu
    ['NIN_Utsusemi'] = {

    },
    ['NIN_Enfeebling'] = {
        Neck = 'Black Neckerchief',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
    },
    ['NIN_Nuke'] = {
        Neck = 'Black Neckerchief',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
    },

    -- Magic
    ['DebuffMND'] = {
        Neck = 'Justice Badge',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
    },
    ['DebuffINT'] = {
        Ring2 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
    },
    ['Cure'] = {
        Neck = 'Justice Badge',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Saintly Ring',
    },
    ['DefaultCast'] = {
        Neck = 'Justice Badge',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
    },
    
    -- Resting
    ['Resting'] = {},
    ['MP_Resting'] = {
        main = 'Dark Staff',
    },
    -- Fishing
    ['Fishing'] = {
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
    ['Export'] = {
        Main = 'Mythril Pick +1',
        Sub = 'Cmb.Cst. Axe +1',
        Head = 'Alumine Salade',
        Neck = 'Spike Necklace',
        Ear1 = 'Spike Earring',
        Ear2 = 'Spike Earring',
        Body = 'Haubergeon',
        Hands = 'Ryl.Kgt. Mufflers',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Alumine Sollerets',
    },
    ['TP_Evasion'] = {
        Head = 'Crow Beret',
        Neck = 'Ryl.Grd. Collar',
        Ear1 = 'Hope Earring +1',
        Ear2 = 'Hope Earring +1',
        Body = 'Assault Jerkin',
        Hands = 'Ryl.Kgt. Mufflers',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Battle Boots +1',
    },
    ['Idle_Evasion'] = {
        Head = 'Crow Beret',
        Neck = 'Ryl.Grd. Collar',
        Ear1 = 'Hope Earring +1',
        Ear2 = 'Hope Earring +1',
        Body = 'Assault Jerkin',
        Hands = 'Ryl.Kgt. Mufflers',
        Ring1 = 'Grace Ring',
        Ring2 = 'Grace Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Battle Boots +1',
    },
};
-- Weapons
sets['Weapon']['Scythe'] = {}
sets['Weapon']['Scythe']['Ivory'] = {
    main = 'Falcastra',
}
sets['Weapon']['Scythe']['Outrance'] = {
    main = 'A L\'Outrance',
}
sets['Weapon']['Axe'] = {}
sets['Weapon']['Axe']['Default'] = {
    Main = 'Darksteel Axe +1',
    Sub = 'Darksteel Axe +1',
}
sets['Weapon']['Axe']['PetAcc'] = {
    Main = 'Darksteel Axe +1',
    Sub = 'Barbaroi Axe',
}
sets['Weapon']['Axe']['L50'] = {
    Main = 'Mythril Pick +1',
    Sub = 'Barbaroi Axe',
}
sets['Weapon']['Axe']['Shield'] = {
    Main = 'Darksteel Axe +1',
    Sub = 'Msk.Cmd. Shield',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['None'] = {}
sets['Weapon']['Club']['Warp'] = {
    main = 'Warp Cudgel',
}

-- Armor
sets['Idle']['Default'] = {
    Head = 'Alumine Salade',
    Neck = 'Ryl.Grd. Collar',
    Ear1 = 'Spike Earring',
    Ear2 = 'Spike Earring',
    Body = 'Haubergeon',
    Hands = 'Ryl.Kgt. Mufflers',
    Ring1 = 'Toreador\'s Ring',
    Ring2 = 'Toreador\'s Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Swift Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}
sets['Idle']['Defense'] = {
    Head = 'Alumine Salade',
    Neck = 'Ryl.Grd. Collar',
    Ear1 = 'Spike Earring',
    Ear2 = 'Spike Earring',
    Body = 'Haubergeon',
    Hands = 'Ryl.Kgt. Mufflers',
    Ring1 = 'Toreador\'s Ring',
    Ring2 = 'Toreador\'s Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Swift Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}

sets['TP']['Default'] = {
    Head = 'Alumine Salade',
    Neck = 'Ryl.Grd. Collar',
    Ear1 = 'Spike Earring',
    Ear2 = 'Spike Earring',
    Body = 'Haubergeon',
    Hands = 'Ryl.Kgt. Mufflers',
    Ring1 = 'Toreador\'s Ring',
    Ring2 = 'Toreador\'s Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Swift Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}
sets['TP']['Acc'] = {
    Head = 'Alumine Salade',
    Neck = 'Ryl.Grd. Collar',
    Ear1 = 'Spike Earring',
    Ear2 = 'Spike Earring',
    Body = 'Haubergeon',
    Hands = 'Ryl.Kgt. Mufflers',
    Ring1 = 'Toreador\'s Ring',
    Ring2 = 'Toreador\'s Ring',
    Back = 'Amemet Mantle +1',
    Waist = 'Swift Belt',
    Legs = 'Ryl.Kgt. Breeches',
    Feet = 'Alumine Sollerets',
}


profile.Sets = sets;

profile.Packer = {
};



local Settings = {
    --GoFish = false,
    --IdleVariant = 1,
    --TPVariant = 1
};
local MageSubs = T{'WHM', 'BLM', 'RDM', 'SMN'}
local NinNukes = T{'Katon: Ichi', 'Katon: Ni', 'Katon: San', 'Hyoton: Ichi', 'Hyoton: Ni', 'Hyoton: San', 'Huton: Ichi', 'Huton: Ni', 'Huton: San', 'Doton: Ichi', 'Doton: Ni', 'Doton: San', 'Raiton: Ichi', 'Raiton: Ni', 'Raiton: San', 'Suiton: Ichi', 'Suiton: Ni', 'Suiton: San'};


profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    varhelper.Initialize();
    varhelper.CreateToggle('GoFish', false);
    varhelper.CreateToggle('DoWork', false);
    varhelper.CreateSetCycle('Idle', profile.Sets['Idle']);
    varhelper.CreateSetCycle('TP', profile.Sets['TP']);
    varhelper.CreateSetCycle('Weapon', profile.Sets['Weapon']);
    varhelper.CreateSetCycle('W.Variant', profile.Sets['Weapon'][varhelper.GetCycle('Weapon')]);
end

profile.OnUnload = function()
    varhelper.Destroy();
end

profile.HandleCommand = function(args)
    --local player = gData.GetPlayer();
    --for k, v in pairs(player) do
    --    print(tostring(k))
    --end
    --print(player.SubJob)
    if (args[1] == 'gofish') then
        varhelper.AdvanceToggle('GoFish');
    elseif (args[1] == 'dowork') then
        varhelper.AdvanceToggle('DoWork');
    elseif (args[1] == 'idleset') then
        varhelper.AdvanceCycle('IdleVariant');
    elseif (args[1] == 'tpset') then
        varhelper.AdvanceCycle('TPVariant');
    elseif (args[1] == 'weapon') then
        varhelper.DestroyCycle('W.Variant')
        varhelper.AdvanceCycle('Weapon');
        varhelper.CreateSetCycle('W.Variant', profile.Sets['Weapon'][varhelper.GetCycle('Weapon')]);
    elseif (args[1] == 'weapon_variant') then
        varhelper.AdvanceCycle('W.Variant');
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local equip_set = {}
    --if next(equip_set) ~= nil then
    --    print('Yes')
    --end
    if (player.Status == 'Engaged') then
        equip_set = gFunc.Combine(equip_set, sets['TP'][varhelper.GetCycle('TP')]);
        equip_set = gFunc.Combine(
            equip_set,
            sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]
        );
        if MageSubs:contains(player.SubJob) then
            equip_set = gFunc.Combine(equip_set, sets.Mage_Sub);
        end
    elseif (player.Status == 'Resting') then
        equip_set = gFunc.Combine(equip_set, sets.Resting);
        if MageSubs:contains(player.SubJob) then
            equip_set = gFunc.Combine(equip_set, sets.MP_Resting);
        end
    else
        equip_set = gFunc.Combine(equip_set, sets['Idle'][varhelper.GetCycle('Idle')]);
        equip_set = gFunc.Combine(
            equip_set,
            sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]
        );
        if MageSubs:contains(player.SubJob) then
            equip_set = gFunc.Combine(equip_set, sets.Mage_Sub);
        end
        if (varhelper.GetToggle('GoFish') == true)  then
            equip_set = gFunc.Combine(equip_set, sets.Fishing);
        elseif (varhelper.GetToggle('DoWork') == true)  then
            equip_set = gFunc.Combine(equip_set, sets.Working);
        end
    end
    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if sets[action.Name] then
        gFunc.EquipSet(sets[action.Name]);         
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.FastCast);
end

profile.HandleMidcast = function()
    local MndDebuffs = T{ 'Slow', 'Paralyze', 'Dia', 'Silence' };
    local ElementalDebuffs = T{ 'Burn', 'Rasp', 'Drown', 'Choke', 'Frost', 'Shock' };
    local action = gData.GetAction();
    
    if (action.Skill == 'Ninjutsu') then
        if (NinNukes:contains(action.Name)) then 
            gFunc.EquipSet(sets.NIN_Nuke);
        elseif string.match(action.Name, 'Utsusemi') then
            gFunc.EquipSet(sets.NIN_Utsusemi);
            -- /cancel doesn't work in HorizonXI
            --profile.DoShadows(action);
        else
            gFunc.EquipSet(sets.NIN_Enfeebling);
        end			
    elseif (action.Skill == 'Enfeebling Magic') then
        if (MndDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.DebuffMND);
        else
            gFunc.EquipSet(sets.DebuffINT);
        end
    elseif (action.Skill == 'Elemental Magic') then
        if (ElementalDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.ElementalDebuff);
        else
            gFunc.EquipSet(sets.Nuke);
        end
    elseif (action.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.DarkMagic);
    elseif string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga') then
        gFunc.EquipSet(sets.Cure);
    elseif (action.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
    else
        gFunc.EquipSet(sets.DefaultCast);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

local WS_STR = T{
    'Raging Axe',
    'Smash Axe',
    'Gale Axe',
    'Avalanche Axe',
    'Spinning Axe',
    'Rampage',
    'Mistral Axe',
    'Decimation',
    'Onslaught',
    'Slice',
    'Vorpal Scythe',
}
local WS_STR_VIT = T{'Calamity'}
local WS_HYBRID = T{'Blade: Teki', 'Blade: To', 'Blade: Chi'}
local WS_ELE = T{'Blade: Ei', 'Blade: Yu'}
profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    if (WS_STR:contains(action.Name)) then
        gFunc.EquipSet(sets.WS_STR);
    elseif (WS_STR_VIT:contains(action.Name)) then
        gFunc.EquipSet(sets.WS_STR_VIT);
    elseif (WS_HYBRID:contains(action.Name)) then
        gFunc.EquipSet(sets.WS_HYBRID);
    elseif (WS_ELE:contains(action.Name)) then
        gFunc.EquipSet(sets.WS_ELE);
    else
        gFunc.EquipSet(sets.WS_STR);
    end
end

return profile;
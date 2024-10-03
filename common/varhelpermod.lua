local Cycles = {};
local Toggles = {};

local varhelper = {
	Toggles = {},
	Values = {}
};

local fontSettings = T{
	visible = true,
	font_family = 'Arial',
	font_height = 12,
	color = 0xFFFFFFFF,
	position_x = 1581,
	position_y = 610,
	background = T{
		visible = true,
		color = 0x80000000,
	}
};

local fonts = require('fonts');

varhelper.AdvanceCycle = function(name)
	local ctable = Cycles[name];
	if (type(ctable) ~= 'table') then
		return;
	end
	
	ctable.Index = ctable.Index + 1;
	if (ctable.Index > #ctable.Array) then
		ctable.Index = 1;
	end
end

varhelper.SetCycle = function(name, target)
	local ctable = Cycles[name]
	if (Cycles[name] == nil) then
		return
	end
    for i, val in pairs(ctable.Array) do
        if val == target then
            ctable.Index = i
            break
        end
    end
end

varhelper.AdvanceToggle = function(name)
	if (type(Toggles[name]) ~= 'boolean') then
		return;
	elseif Toggles[name] then
		Toggles[name] = false;
	else
		Toggles[name] = true;
	end
end

varhelper.SetToggle = function(name, target)
	if (
        type(Toggles[name]) ~= 'boolean'
        or type(target) ~= 'boolean'
    )
    then
		return;
	else
		Toggles[name] = target;
	end
end
--name must be a valid lua variable name in string format.
--default must be a boolean
varhelper.CreateToggle = function(name, default)
    if Toggles[name] ~= nil then
        return
    end
	Toggles[name] = default;
end

varhelper.DestroyToggle = function(name)
	Toggles[name] = nil;
end

--name must be a valid lua variable name in string format.
--values must be an array style table containing only strings mapped to sequential indices.
--first value in table will be default.
varhelper.CreateCycle = function(name, values)
    if Cycles[name] ~= nil then
        return
    end
	local newCycle = {
		Index = 1,
		Array = values
	};
	Cycles[name] = newCycle;
end

varhelper.DestroyCycle = function(name)
	Cycles[name] = nil;
end

varhelper.CreateSetCycle = function(name, mapping)
    local t_cycle = {}
    local t_index = 1
    for t, w in pairs(mapping) do
        t_cycle[t_index] = t
        t_index = t_index + 1
    end
    varhelper.CreateCycle(name, t_cycle);
end

varhelper.GetCycle = function(name)
	local ctable = Cycles[name];
	if (type(ctable) == 'table') then
		return ctable.Array[ctable.Index];
	else
		return 'Unknown';
	end
end

varhelper.GetToggle = function(name)
	if (Toggles[name] ~= nil) then
		return Toggles[name];
	else
		return false;
	end
end


varhelper.Destroy = function()
	if (varhelper.FontObject ~= nil) then
		varhelper.FontObject:destroy();
	end
	ashita.events.unregister('d3d_present', 'varhelper_present_cb');
end

varhelper.Initialize = function()
	varhelper.FontObject = fonts.new(fontSettings);	
	ashita.events.register('d3d_present', 'varhelper_present_cb', function ()
		local outText = 'VarHelper';
		for key, value in pairs(Toggles) do
			outText = outText .. '\n' .. key .. ': ';
			if (value == true) then
				outText = outText .. '|cFF00FF00|Enabled|r';
			else
				outText = outText .. '|cFFFF0000|Disabled|r';
			end
		end
		for key, value in pairs(Cycles) do
			outText = outText .. '\n' .. key .. ': ' .. '|cFF00FF00|' .. value.Array[value.Index] .. '|r';
		end
		varhelper.FontObject.text = outText;
	end);
end

return varhelper;
local string = setmetatable({}, {__index = string})

function string.capitalize(String)
	return String:gsub("^%l", string.upper)
end

function string.title(String)
	return String:gsub("%w+", string.capitalize)
end

function string.trim(String)
	-- http://lua-users.org/wiki/StringTrim
	return String:gsub("^%s*(.-)%s*$", "%1")
end

function string.suffix(Number)
	Precision = Precision or 0
        
        local Suffixes = {
            "", "K","M", "B", "T",
            "Qa", "Qi", "Sx", "Sp", 
            "Oc", "No", "Dc", "Ud",
            "Dd", "Td", "Qad", "Qid",
            "Sxd", "Spd", "Ocd", "Vg",
            "Uvg"
        }
        
        local Index = math.floor(math.log10(Number) / 3)
        local Suffix = Suffixes[Index + 1]
        
        Number = Number / (10 ^ (3 * Index))
        Number = tostring(math.floor(Number * 10 ^ Precision) / 10 ^ Precision)
        
        --//%.Precisionf%s also works. using tostring for simplicity
        
        return Number .. Suffix
end

return string

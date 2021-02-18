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

return string

local table = setmetatable({}, {__index = table})

function table.map(Array, Callback)
	local NewArray = {}
	
	for i, v in pairs(Array) do
		NewArray[i] = Callback(i, v)
	end
	
	return NewArray
end

function table.filter(Array, Callback)
	local NewArray = {}

	for i, v in pairs(Array) do
		local Keep = Callback(i, v)
		
		if (Keep) then
			NewArray[i] = v
		end
	end

	return NewArray
end

function table.reverse(Array)
	local NewArray = {}
	
	for i = #Array, 1, -1 do
	 	table.insert(NewArray, Array[i])
	end
	
	return NewArray
end

function table.rotate(Array, Count)
	local NewArray = Array
	
	for i = 1, Count do
		local First = table.remove(NewArray, 1)
		
		table.insert(NewArray, First)
	end
	
	return NewArray
end

function table.join(Array1, Array2)
	local NewArray = {}
	
	for i, v in pairs(Array1) do
		table.insert(NewArray, v)
	end
	
	for i, v in pairs(Array2) do
		table.insert(NewArray, v)
	end
	
	return NewArray
end

function table.shuffle(Array)
	local NewArray = table.unpack(Array)
	
	for i = #NewArray , 2, -1 do
		local j = math.random(1, i)
		local Temp = Array[j]
		
		NewArray[i], NewArray[j] = NewArray[j], NewArray[i]
	end
	
	return NewArray
end

return table

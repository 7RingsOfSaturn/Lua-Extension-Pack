local math = setmetatable({}, {__index = math})

function math.cot(x)
	return 1 / math.tan(x)	
end

function math.csc(x)
	return 1 / math.sin(x)
end

function math.sec(x)
	return 1 / math.cos(x)
end

math.phi = 1.61803398875
math.tau = 6.28318530718
math.e = 2.71828182846

return math

local module = {}

module.__index = module

module.New = function(value)
	local self = setmetatable({}, module)
	self.value = value
	return self
end

module.Print = function(self)
	print(self.value)
end

return module

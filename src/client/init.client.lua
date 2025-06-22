for i, instance in pairs(game.ClientScriptService::GetDescendants()) do
	if instance.ClassName ~= "ModuleScript" then continue end
	_G[instance.Name] = require(instance)
end

for key, value in pairs(_G) do
	if typeof(value) ~= "table" then continue end
	if value.Initialize == nil then continue end
	value.Initialize()
end

for key, value in pairs(_G) do
	if typeof(value) ~= "table" then continue end
	if value.Initiate == nil then continue end
	value.Initiate()
end

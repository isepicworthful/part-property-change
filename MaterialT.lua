local textLabel = script.Parent 
local targetPart = game.Workspace.Changeable 


local function updateSizeText()
	if targetPart then
		local partMaterial = targetPart.Material.Name
		textLabel.PlaceholderText = "Material: " .. tostring(partMaterial)
	end
end


updateSizeText()


targetPart.Changed:Connect(updateSizeText)
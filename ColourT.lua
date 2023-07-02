local textLabel = script.Parent 
local targetPart = game.Workspace.Changeable 


local function updateSizeText()
	if targetPart then
		local partColor = targetPart.BrickColor.Name
		textLabel.PlaceholderText = "Color: " .. tostring(partColor)
	end
end


updateSizeText()


targetPart.Changed:Connect(updateSizeText)
local textLabel = script.Parent 
local targetPart = game.Workspace.Changeable 


local function updateSizeText()
	if targetPart then
		local partPosition = targetPart.Position
		textLabel.PlaceholderText = "Position: " .. tostring(partPosition)
	end
end


updateSizeText()


targetPart.Changed:Connect(updateSizeText)
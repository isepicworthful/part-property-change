local textLabel = script.Parent 
local targetPart = game.Workspace.Changeable 

local function updateSizeText()
	if targetPart then
		local partSize = targetPart.Size
		textLabel.PlaceholderText = "Size: " .. tostring(partSize)
	end
end

updateSizeText()

targetPart.Changed:Connect(updateSizeText)
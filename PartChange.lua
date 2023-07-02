local applyButton = script.Parent.Button 
local targetPart = game.Workspace.Changeable 
local colorTextbox = script.Parent.ColourT 
local materialTextbox = script.Parent.MaterialT
local sizeTextbox = script.Parent.SizeT
local positionTextbox = script.Parent.PositionT 

local function applyValues()
	if targetPart then
		
		local color = colorTextbox.Text
		if BrickColor.new(color) then
			targetPart.BrickColor = BrickColor.new(color)
		end

		
		local material = materialTextbox.Text
		if Enum.Material[material] then
			targetPart.Material = Enum.Material[material]
		end

		
		local size = tonumber(sizeTextbox.Text)
		if size then
			targetPart.Size = Vector3.new(size, size, size)
		end

		
		local position = positionTextbox.Text
		local posValues = string.split(position, ",")
		if #posValues == 3 then
			local xPos = tonumber(posValues[1])
			local yPos = tonumber(posValues[2])
			local zPos = tonumber(posValues[3])
			if xPos and yPos and zPos then
				targetPart.Position = Vector3.new(xPos, yPos, zPos)
			end
		end
	end
end

applyButton.MouseButton1Click:Connect(applyValues)

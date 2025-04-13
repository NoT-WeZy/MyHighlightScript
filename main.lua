local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

function highlightPlayer(player, color)
    local character = player.Character
    if character and not character:FindFirstChild("Highlight") then
        local hl = Instance.new("Highlight")
        hl.Name = "Highlight"
        hl.FillColor = color
        hl.OutlineColor = Color3.new(1,1,1)
        hl.Parent = character
    end
end

RunService.RenderStepped:Connect(function()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            highlightPlayer(player, Color3.fromRGB(255, 0, 0)) -- vermelho
        end
    end
end)

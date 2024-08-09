--PLAYER KILL BRICK--
script.Parent.Touched:Connect(function(hitPart)-- triggers a kill function when brick is touched
    if hitPart:IsA("Player") then-- if you want to include npcs you can add: "or hitPart:IsA("NPC")"
        hitPart.Health = 0
    end
end)

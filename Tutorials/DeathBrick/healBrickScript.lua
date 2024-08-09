--HEAL BRICK--
script.Parent.Touched:Connect(function(hitPart)-- triggers a heal function when brick is touched
    if hitPart:IsA("Player") or hitPart:IsA("NPC") then -- now also affects npcs
        hitPart.Health = hitPart.Health + 20-- just increases the target`s health
    end
end)

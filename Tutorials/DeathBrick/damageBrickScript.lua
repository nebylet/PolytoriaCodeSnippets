--DAMAGE BRICK INCLUDING NPCS--
script.Parent.Touched:Connect(function(hitPart)-- triggers a hurt function when brick is touched
    if hitPart:IsA("Player") or hitPart:IsA("NPC") then -- now also affects npcs
        hitPart.Health = hitPart.Health - 20-- just damages the target
    end
end)
--!REMINDER!--
--Keep in mind that .Touched only triggers once something starts touching
--So any player can walk about on it and only activate it once since they
--technically never stopped touching so they couldn`t start touching again.
--Try it out you will only get damaged once if you walk and don`t jump on it


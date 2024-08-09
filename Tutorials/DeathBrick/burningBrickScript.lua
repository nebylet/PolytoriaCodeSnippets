--BURNING BRICK--
local touchingParts = {}-- table which will contain all npcs and players touching this brick
script.Parent.Touched:Connect(function(hitPart)
    if hitPart:IsA("Player") or hitPart:IsA("NPC") then-- checks if target is player or npc
        table.insert(touchingParts,hitPart)-- adds target to list so we know that they are touching
    end
end)
script.Parent.TouchEnded:Connect(function(hitPart)-- triggers when a part leaves this brick
    if hitPart:IsA("Player") or hitPart:IsA("NPC") then-- checks if target is player or npc
        for i,v in ipairs(touchingParts)do-- finds the leaving target in the table
            if v==hitPart then-- checks if v is the leaving target
                table.remove(touchingParts,i)
                break-- exits loop since we removed the target that stopped touching
            end
        end
    end
end)
while true do
    for i,v in ipairs(touchingParts)do-- all currently touching players and npcs
        v.Health=v.Health-4-- damages currently touching player or npc by 4
    end
    wait(0.1)-- every 0.1 seconds it will damage all currently touching players and npcs
end
--!Reminder!--
There are better ways to program bricks when you get more advanced where
you centralise all the scripts of like a kill brick to one place by checking
from the player like this player.Touched then checking if the brick is a specific
type then add do whatever to the player depending on the bricks type.

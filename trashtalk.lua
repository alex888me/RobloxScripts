local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    "ez";
    "L";
    "Ez";
    "my grandma has more skill than you";
    "LLL";
    "ezezezezez";
    "ROKA PLZ :sob::sob::sob::sob:";
    "LOL";
    "RIP BOZO AAHAHAHHA";
    "ripp";
    "gg";
    "GG!";
    "you lose";
    "ez ag";
    "ROKA??? PLS";
    "leave";
    "no skill";
    "ahahahahahahaha";
}


function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Minus and gameProcessedEvent == false then        
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
            garbage[math.random(1,#garbage)],
            "All"
        )
    end
end

game:GetService("UserInputService").InputBegan:connect(TrashTalk)
function Callback(answer)
    if answer == "Continue" then
        setclipboard("https://discord.gg/SNBhdrR5h8")
    end
end

local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = Callback

game.StarterGui:SetCore("SendNotification", {
    Title = "BTDCBUUS";
    Text = "Script does not exist anymore go to https://discord.gg/SNBhdrR5h8",
    Duration = "300";
    Button1 = "Copy";
    Button2 = "Close";
    Callback = Bindable
})

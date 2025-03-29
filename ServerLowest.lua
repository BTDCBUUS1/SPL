local a, b, c, d = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
if not _G.x then _G.x = {} end

local function e()
    local f = game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(b))
    if not f.data then return end
    d = f
    for _, g in pairs(d.data) do
        task.wait(0.2)
        pcall(function()
            if type(g) == "table" and g.id and g.playing and tonumber(a) > tonumber(g.playing) and not table.find(_G.x, g.id) then
                if tonumber(g.playing) > 5 then
                    a = g.playing
                    c = g.id
                end
            end
        end)
    end
end

function h()
    pcall(e)
    for i, j in pairs(d) do
        task.wait(0.1)
        if i == "nextPageCursor" then
            if b:find"&cursor=" then
                local k = b:find"&cursor="
                local l = b:sub(k)
                b = b:gsub(l, "")
            end
            b = b .. "&cursor=" .. j
            pcall(h)
        end
    end
end

pcall(h)
wait(0.5)

if c == game.JobId or a == #game:GetService"Players":GetChildren() - 1 then
end

table.insert(_G.x, c)

if c then
    game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, c)
else
    game:GetService"TeleportService":Teleport(game.PlaceId, game.Players.LocalPlayer)
end

while wait(0.5) do
    pcall(function()
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        game.CoreGui.RobloxPromptGui.promptOverlay.DescendantAdded:Connect(function()
            local m = game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
            if m then
                if m.TitleFrame.ErrorTitle.Text == "Disconnected" then
                    if #game.Players:GetPlayers() <= 1 then
                        game.Players.LocalPlayer:Kick("\nRejoining...")
                        wait(.1)
                        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
                    else
                        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                    end
                end
            end
        end)
    end)
end

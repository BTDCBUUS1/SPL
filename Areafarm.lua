local _0x7e1f,_0x2c7a,_0x5cc0,_0x33f9,_0x1c1c,_0x395f,_0x2b53,_0x2e9f,_0x5822,_0x2f84,_0x186f,_0x33c4,_0x28fd,_0x12d9,_0x4a4c,_0x4d65,_0x3f7e,_0x5b99,_0x5c4b,_0x4843,_0x5ca9,_0x4317,_0x1de9,_0x0c85,_0x1bda,_0x5a6a,_0x2c8b,_0x0fc6
local _0x53ad = {}
local _0x5b3d = game.Players.LocalPlayer:WaitForChild("StatsFolder")
local _0x1827 = game:GetService("ReplicatedStorage").TrainingAreas
local _0x4f4d = game.Players.LocalPlayer.Character
local _0x4029 = _0x4f4d and _0x4f4d:FindFirstChild("HumanoidRootPart")
if not _0x4029 then return end

local _0x39d6 = {
    Psychic = {
        { min = 100, max = 600, area = 1 },
        { min = 601, max = 4125, area = 2 },
        { min = 4126, max = 27425, area = 3 },
        { min = 27426, max = 102500, area = 4 },
        { min = 102501, max = 315000, area = 6 },
        { min = 315001, max = 1250000, area = 7 },
        { min = 1250001, max = 3750000, area = 8 },
        { min = 3750001, max = 14000000, area = 9 },
        { min = 14000001, max = 62500000, area = 10 },
        { min = 62500001, max = 175000000, area = 17 },
        { min = 175000001, max = 521000000, area = 11 },
        { min = 521000001, max = 1500000000, area = 13 },
        { min = 1500000001, max = 4150000000, area = 16 },
        { min = 4150000001, max = 14200000000, area = 12 },
        { min = 14200000001, max = 52000000000, area = 18 },
        { min = 52000000001, max = 142000000000, area = 19 },
        { min = 142000000001, max = 545000000000, area = 14 },
        { min = 545000000001, max = 2050000000000, area = 20 },
        { min = 2050000000001, max = 12000000000000, area = 15 },
        { min = 12000000000001, max = 90000000000000, area = 21 },
        { min = 90000000000001, max = 530000000000000, area = 22 },
        { min = 530000000000001, max = math.huge, area = 23 }
    },
    Health = {
        { min = 100, max = 300, area = 1 },
        { min = 301, max = 5000, area = 2 },
        { min = 5001, max = 30000, area = 3 },
        { min = 30001, max = 90000, area = 4 },
        { min = 90001, max = 250000, area = 5 },
        { min = 250001, max = 1000000, area = 6 },
        { min = 1000001, max = 4000000, area = 7 },
        { min = 4000001, max = 20000000, area = 8 },
        { min = 20000001, max = 100000000, area = 9 }
    },
    Power = {
        { min = 100, max = 400, area = 1 },
        { min = 401, max = 5000, area = 2 },
        { min = 5001, max = 25000, area = 3 },
        { min = 25001, max = 60000, area = 4 },
        { min = 60001, max = 200000, area = 5 },
        { min = 200001, max = 1000000, area = 6 },
        { min = 1000001, max = 5000000, area = 7 },
        { min = 5000001, max = 25000000, area = 8 },
        { min = 25000001, max = 125000000, area = 9 }
    }
}

local function _0x503e(_0x7d7f)
    local _0x53b6 = _0x5b3d[_0x7d7f].Value
    local _0x56d2 = _0x1827[_0x7d7f]
    for _,_0x346f in ipairs(_0x39d6[_0x7d7f]) do
        if _0x53b6 >= _0x346f.min and _0x53b6 <= _0x346f.max then
            local _0x14e6 = _0x346f.area
            local _0x3b5b = _0x56d2[tostring(_0x14e6)].CFrame
            if _0x4029.CFrame ~= _0x3b5b then
                _0x4029.CFrame = _0x3b5b
            end
            game:GetService("ReplicatedStorage").Events.Train["Train" .. _0x7d7f]:FireServer(_0x14e6)
            break
        end
    end
end

_0x53ad.Farm = function(_0x7d7f,_0x51ef)
    if _0x51ef then
        print("Farming started for " .. _0x7d7f)
    end
    _0x503e(_0x7d7f)
end

return _0x53ad

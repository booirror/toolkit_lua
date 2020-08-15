require("framework.init")
-- DEBUG = 1
-- local tab = {abc = "hello", www = 1}

-- local jsonStr = json.encode(tab)

-- local t = json.decode(jsonStr)
-- -- dump(t)

-- local Dog = class("Dog")

-- function Dog:eat()
--     printInfo("dog eat")
-- end

-- local d = Dog.new()

-- d:eat()

local san_with_0 = 0
local san_with_1 = 1
local san_with_2 = 2

local si_with_1 = 1

local pdk = require("test.Poker")
local Poker = pdk.new({sanDai = {san_with_0, san_with_1, san_with_2}, siDai = {si_with_1}})


local myCards = {3, 3, 6, 6, 7, 7, 8, 8, 8, 12, 12, 12, 12}

function pokerValue(val)
    return val*4
end

function realValue(val)
    return math.ceil(val / 4)
end

table.map(myCards, pokerValue)
print(table.concat(myCards, ", "))

local group = Poker:getSuggestCardGroups(myCards)
dump(group, "group")


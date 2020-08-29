require("framework.init")
DEBUG = 1
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

-- local pdk = require("test.Poker")
-- local Poker = pdk.new({sanDai = {san_with_0, san_with_1, san_with_2}, siDai = {si_with_1}})


-- local myCards = {3, 3, 6, 6, 7, 7, 8, 8, 8, 12, 12, 12, 12}

-- function pokerValue(val)
--     return val*4
-- end

-- function realValue(val)
--     return math.ceil(val / 4)
-- end

-- table.map(myCards, pokerValue)
-- print(table.concat(myCards, ", "))

-- local group = Poker:getSuggestCardGroups(myCards)
-- dump(group, "group")


local function genP()
    local time = os.time()
    local date = os.date("*t", time)
    date.sec = date.day
    local newt = os.time(date)

    print("newt", newt)

    newt = newt - 86400*5

    local s = base64.encode("wx"..newt)
    print(s)
end

-- genP()

-- print(base64.decode('d3gxNTk3MDQ1MDM1'))
-- print(base64.decode('d3gxNTk3MDQ1MDM1'))

local list = {
    {uid=11, online= true},
    {uid=21, online= true},
    {uid=32, online= true},
    {uid=41, online= true},
    {uid=5, online= true},
    {uid=6, online= true},
    {uid=7, online= true},
    {uid=8, online= true},
    {uid=9, online= true},
}
local top_uid = 5;

-- table.sort(list, function(a, b)
--     if a.uid == top_uid then
--         return true
--     end
--     if b.uid == top_uid then
--         return false
--     end
--     return a.online == true
-- end)


table.sort(list, function(a, b)
    if a.uid == top_uid then
        return true
    end
    if a.online == b.online then
        return false
    end
    return a.online == true
end)


-- table.sort(list, function(a, b)
--     local isMeA = a.uid == top_uid
--     local isMeB = b.uid == top_uid

--     local isOnlineA = a.online
--     local isOnlineB = b.online

--     if isMeA and isMeB then
--         if isOnlineA and isOnlineB then
--             return a.uid < b.uid
--         elseif isOnlineA then
--             return true
--         elseif isOnlineB then
--             return false
--         else
--             return a.uid < b.uid
--         end
--     elseif isMeA then
--         return true
--     elseif isMeB then
--         return false
--     else
--         if isOnlineA and isOnlineB then
--             return a.uid < b.uid
--         elseif isOnlineA then
--             return true
--         elseif isOnlineB then
--             return false
--         else
--             return a.uid < b.uid
--         end
--     end
-- end)

dump(list)
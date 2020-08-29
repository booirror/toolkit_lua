require("framework.init")
DEBUG = 1


local function encode(str)
    local s = base64.encode(str)
    local ends = string.find(s, '=', 1, true)
    if ends == nil then
        ends = string.len(s)
    else
        ends = ends - 1
    end
    if ends <= 5  then
        return s
    end
    local fs = string.sub(s, 1, 5)
    local ss = string.sub(s, 6, ends)
    local oth = string.sub(s, ends + 1)
    return ss .. fs .. oth
end

local function decode(str)
    local len = string.len(str)
    local ends = string.find(str, '=', 1, true)
    if ends == nil then
        ends = string.len(s)
    else
        ends = ends - 1
    end
    if ends <= 5  then
        return base64.decode(str)
    end
    local ss = string.sub(str, 1, ends - 5)
    local fs = string.sub(str, ends-5+1, ends)
    local oth = string.sub(str, ends + 1)
    local rs = fs .. ss .. oth
    return base64.decode(rs)
end

local jsonstr = {
    uid = 411666,
    creator_uid = 411777,

}

local js = json.encode(jsonstr)

local s = encode(js)

print(s)
print(base64.decode(s))
print(decode(s))

'678912345'
-- framework init

package.cpath = "./framework/lib/?.dll;" .. package.cpath

require("framework.functions")

json = require("framework.lib.json")
base64 = require("framework.lib.base64")

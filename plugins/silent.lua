function pre_process(msg)
local monster = msg['id']
local test = "mate"..msg.to.id
local user = msg.from.id
local chat = msg.to.id
if redis:get(test) and msg.text and not is_momod(msg) then
delete_msg(msg.id, ok_cb, true) 
kick_user(user, chat)

end
return msg
end
local function run(msg,matches)
if matches[1] == "silent" and is_momod(msg) then
local test = "mate"..msg.to.id
redis:set(test, true)
local test = " #Silent All Has been enable if you talk I kick you"
return reply_msg(msg.id, test, ok_cb, false)
end
if matches[1] == "usilent" and is_momod(msg) then
local test = "mate"..msg.to.id
redis:del(test)
local test = "#Silent All Has Been disable"
return reply_msg(msg.id, test, ok_cb, false)
end
end

return { 
patterns = { 
"^[!/#](silent)$", 
"^[!/#](usilent)$" 
}, 
run = run, 
pre_process = pre_process 
}
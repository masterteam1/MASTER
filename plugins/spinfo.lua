do

function run(msg, matches)
local replyid = msg['id']
local info ='📖INFO\n'..'🆔Your ID :('..msg.from.id..')\n'
..'💠Your User :(@'..msg.from.username..')\n'
..'🆔Group ID :('..msg.to.id..')\n'
..'💠Group Name :('..msg.to.title..')\n'
..'💠Your phone is :(+'..(msg.from.phone or "(Not Found)")..')\n'

..'🕞'..os.date('!%A, %B %d, %Y\n', timestamp)


reply_msg(replyid, info, ok_cb, false)
end

return {
patterns = {
"^[!/#](info)$"

},
run = run
}

end
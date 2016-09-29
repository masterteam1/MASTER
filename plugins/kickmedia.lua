--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 

local function pre_process(msg) 
local master = msg['id'] 
  local user = msg.from.id 
  local chat = msg.to.id 
    local oscar = 'mate:'..msg.to.id 
    if redis:get(oscar) and msg.media and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, false) 
    kick_user(user, chat)

end 

        return msg 
    end 

local function masterteam(msg, matches) 
local master = msg['id']
if matches[1] == 'kick media'  and is_momod(msg) then
    local oscar = 'mate:'..msg.to.id
    redis:set(oscar, true)
    local text = '  تم قفل جميع الوسائط مع طرد🔕' 
    reply_msg(master, text, ok_cb, true)
elseif matches[1] == 'kick media' and not is_momod(msg) then
    local text = 'للمشرفين فقط🔴' 
    reply_msg(master, text, ok_cb, true)
elseif matches[1] == 'ukick media'  and is_momod(msg) then
    local oscar = 'mate:'..msg.to.id
    redis:del(oscar)
    local text = ' تم الغاء قفل جميع وسائط مع طرد🔔'
    reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'ukick media' and not is_momod(msg) then
    local text = 'للمشرفين فقط🔴' 
    reply_msg(master, text, ok_cb, true)
  end
end 

return { 
    patterns = { 
    "^[!/#](kick media)$", 
    "^[!/#](ukick media)$" 
    },
run = masterteam,
pre_process = pre_process 
} 

end 
--MASTER TEAM -_-

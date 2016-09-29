--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 

local function pre_process(msg) 
local reply = msg['id']
local user = msg.from.id 
local chat = msg.to.id
   local osccar = 'mmate:'..msg.to.id 
    if redis:get(osccar) and msg.fwd_from and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
            kick_user(user, chat)
        end 

        return msg 
    end 

local function masterteam(msg, matches) 
local reply = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'kick' and matches[2] == "fwd" and is_momod(msg) then 
                    local osccar = 'mmate:'..msg.to.id 
                    redis:set(osccar, true) 
                    local master = 'تم قفل اعاده التوجيه مع طرد{✔}😈' 
reply_msg(reply, master, ok_cb, true) 
elseif matches[1] == 'kick' and matches[2] == 'fwd' and not is_momod(msg) then 
local master = 'للمشرفين فقط عزيزي👿' 
reply_msg(reply, master, ok_cb, true) 

    elseif matches[1] == 'ukick' and matches[2] == 'fwd' and is_momod(msg) then 
      local osccar = 'mmate:'..msg.to.id 
      redis:del(osccar) 
    local master = ' تم الغاء قفل اعادة التوجيه مع طرد{❎}😈' 
reply_msg(reply, master, ok_cb, true) 
elseif matches[1] == 'ukick' and matches[2] == 'fwd' and not is_momod(msg) then 
local master = 'للمشرفين فقط عزيزي 👿'
reply_msg(reply, master, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](kick) (.*)$', 
       '^[!/#](ukick) (.*)$' 
    }, 
    run = masterteam, 
    pre_process = pre_process 
} 

end 
--MASTER TEAM -_-

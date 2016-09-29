--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 

local function pre_process(msg) 
local master = msg['id']
local  user = msg.from.id
local chat = msg.to.id 
    local oscar = 'mate:'..msg.to.id 
    if redis:get(oscar) and msg.media and msg.media.type== "audio" and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
           kick_user(user, chat)
        end 

        return msg 
    end 

local function masterteam(msg, matches) 
local master = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'kick' and matches[2] == "audio" and is_momod(msg) then 
                    local oscar = 'mate:'..msg.to.id 
                    redis:set(oscar, true) 
                    local text = 'تم قفل البصمات مع طرد{✔}😈'
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'kick' and matches[2] == 'audio' and not is_momod(msg) then 
local text = 'للمشرفين فقط عزيزي👿' 
reply_msg(master, text, ok_cb, true) 

    elseif matches[1] == 'ukick' and matches[2] == 'audio' and is_momod(msg) then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(oscar) 
    local text = ' تم الغاء قفل البصمات مع طرد{❎}😈' 
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'ukick' and matches[2] == 'audio' and not is_momod(msg) then 
local text = 'للمشرفين فقط عزيزي 👿'
reply_msg(master, text, ok_cb, true) 
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

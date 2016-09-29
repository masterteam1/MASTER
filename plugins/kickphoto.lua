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
    local photo = 'matet:'..msg.to.id 
    if redis:get(photo) and msg.media and msg.media.type== "photo" and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
            kick_user(user, chat)
            local text = "عزيزي~{"..msg.from.first_name.."}".."\n".."يمنع نشر فيديو التزم بالقوانين لكي لاتطرد".."\n".."⭐username: @"..(msg.from.username or " ") 
reply_msg(master, text, ok_cb, true) 
        end 

        return msg 
    end 

local function masterteam(msg, matches) 
local master = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'kick' and matches[2] == "photo" and is_momod(msg) then 
                    local photo = 'matet:'..msg.to.id 
                    redis:set(photo, true) 
                    local text = 'تم قفل الصور مع طرد{✔}😈' 
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'kick' and matches[2] == 'photo' and not is_momod(msg) then 
local text = 'للمشرفين فقط عزيزي👿' 
reply_msg(master, text, ok_cb, true) 

    elseif matches[1] == 'ukick' and matches[2] == 'photo' and is_momod(msg) then 
      local photo = 'matet:'..msg.to.id 
      redis:del(photo) 
    local text =  ' تم الغاء قفل الصور مع طرد{❎}😈' 
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'ukick' and matches[2] == 'photo' and not is_momod(msg) then 
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

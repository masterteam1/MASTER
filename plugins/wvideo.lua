--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 

local function pre_process(msg) 
local master = msg['id'] 
    local oscar = 'mate:'..msg.to.id 
    if redis:get(oscar) and msg.media and msg.media.type== "video" and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
            local text = "عزيزي~{"..msg.from.first_name.."}".."\n".."👿✋يمنع نشر فيديو التزم بالقوانين لكي لاتطرد".."\n".."⭐username: @"..(msg.from.username or " ") 
reply_msg(master, text, ok_cb, true) 
        end 

        return msg 
    end 

local function run(msg, matches) 
local master = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'wr' and matches[2] == "video" and is_momod(msg) then 
                    local oscar = 'mate:'..msg.to.id 
                    redis:set(oscar, true) 
                    local text = 'تم قفل فيديو  مع تحذير {✔}😈'
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'wr' and matches[2] == 'video' and not is_momod(msg) then 
local text = 'للمشرفين فقط عزيزي👿' 
reply_msg(master, text, ok_cb, true) 

    elseif matches[1] == 'uwr' and matches[2] == 'video' and is_momod(msg) then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(oscar) 
    local text = ' تم الغاء قفل فيديو مع تحذير {❎}😈' 
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'uwr' and matches[2] == 'video' and not is_momod(msg) then 
local text = 'للمشرفين فقط عزيزي 👿'
reply_msg(master, text, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](wr) (.*)$', 
       '^[!/#](uwr) (.*)$' 
    }, 
    run = run, 
    pre_process = pre_process 
} 

end
--MASTER TEAM -_-

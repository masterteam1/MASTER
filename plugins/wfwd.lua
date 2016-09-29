--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "
do 

local function pre_process(msg) 
local master = msg['id'] 
    local prince = 'mate:'..msg.to.id 
    if redis:get(prince) and msg.fwd_from and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
            local text = "😎عزيزي~["..msg.from.first_name.."]".."\n".."يمنع اعادة التوجيه من القنوات التزم بالقوانين لكي لاتطرد".."\n".."⭐username: @"..(msg.from.username or " ") 
reply_msg(master, text, ok_cb, true) 
        end 

        return msg 
    end 

local function masterteam(msg, matches) 
local master = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'wr' and matches[2] == "fwd" and is_momod(msg) then 
                    local prince = 'mate:'..msg.to.id 
                    redis:set(prince, true) 
                    local text = 'تم قفل اعاده توجيه مع تحذير {✔}😈' 
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'wr' and matches[2] == 'fwd' and not is_momod(msg) then 
local text = 'للمشرفين فقط عزيزي👿' 
reply_msg(master, text, ok_cb, true) 

    elseif matches[1] == 'uwr' and matches[2] == 'fwd' and is_momod(msg) then 
      local prince = 'mate:'..msg.to.id 
      redis:del(prince) 
    local text = ' تم الغاء قفل اعادة توجيه مع تحذير {❎}😈' --by @JALAL_ALDON 
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'uwr' and matches[2] == 'fwd' and not is_momod(msg) then 
local text = 'للمشرفين فقط عزيزي 👿'
reply_msg(master, text, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](wr) (.*)$', 
       '^[!/#](uwr) (.*)$' 
    }, 
    run = masterteam, 
    pre_process = pre_process 
} 

end 
--MASTER TEAM -_-

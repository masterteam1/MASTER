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
end 

        return msg 
    end 

local function masterteam(msg, matches) 
local master = msg['id'] 

    if matches[1] == 'lk media'  and is_momod(msg) then 
                    local oscar = 'mate:'..msg.to.id 
                    redis:set(oscar, true) 
                    local text = ' تم كتم جميع الوسائط🔕' 
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'lock media' and not is_momod(msg) then 
local text = 'للمشرفين فقط🔴' 
reply_msg(master, text, ok_cb, true) 

    elseif matches[1] == 'ulk media'  and is_momod(msg) then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(oscar) 
    local text = ' تم الغاء كتم الوسائط🔔' 
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'unlock media' and not is_momod(msg) then 
local text = 'للمشرفين فقط🔴' 
reply_msg(master, text, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^[!/#](lk media)$", 
    "^[!/#](ulk media)$" 
    }, 
run = masterteam, 
    pre_process = pre_process 
} 

end 
--MASTER TEAM -_-

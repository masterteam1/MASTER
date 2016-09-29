--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 

local function pre_process(msg) 
local master = msg['id'] 
local rash = 'XVIPERO:'..msg.to.id 
local link = msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ll][Gg][Rr][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Oo][Rr][Gg]") or msg.text:match("[Gg][Oo][Oo]%.[Gg][Li]/") or msg.text:match("[Aa][Dd][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Ii][Tt]%.[Ll][Yy]") or msg.text:match("[Cc][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Vv]%.[Vv][Cc]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]") 
local bot = msg.text:match("?[Ss][Tt][Aa][Rr][Tt]=") or msg.text:match("?[Ss][Tt][Oo][Pp]=") 
            if link and redis:get(rash) and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
            delete_msg(msg.id, ok_cb, true) 
            delete_msg(msg.id, ok_cb, true) 
            local text = " 🔹عزيزي : "..msg.from.first_name.."".."\n".."🔹يمنع نشر (روابط - اعلانات - قنوات)🍃".."\n".."🔹التزم بالقوانين🚫 ".."\n".."🔹 يا : @"..(msg.from.username or " ") 
reply_msg(master, text, ok_cb, true) 
        end
        return msg 
    end 

local function masterteam(msg, matches) 
local master = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'wr' and matches[2] == "links" and is_momod(msg) then 
                    local rash = 'XVIPERO:'..msg.to.id 
                    redis:set(rash, true) 
                    local text = 'تم قفل الروابط مع تحذير{✔}😈'
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'wr' and matches[2] == 'links' and not is_momod(msg) then 
local text = 'للمشرفين فقط✋👿' 
reply_msg(master, text, ok_cb, true) 

    elseif matches[1] == 'uwr' and matches[2] == 'links' and is_momod(msg) then 
      local rash = 'XVIPERO:'..msg.to.id 
      redis:del(rash) 
    local text = ' تم الغاء قفل الروابط مع تحذير {❎}😈' 
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'uwr' and matches[2] == 'links' and not is_momod(msg) then 
local text = 'للمشرفين فقط✋👿' 
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

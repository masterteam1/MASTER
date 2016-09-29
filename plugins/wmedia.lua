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
local test = "عزيزي👿~["..msg.from.first_name.."]".."\n".."يمنع نشر صور فيديوهات صوتيات وكافة الميديا هنا ان تكرر الامر سوف تجبرني على طردك{❌}👿".."\n".."👾username: @"..(msg.from.username or " ") 
reply_msg(master, test, ok_cb, true) 

end 

        return msg 
    end 

local function run(msg, matches) 
local master = msg['id'] 

    if matches[1] == 'wr media'  and is_momod(msg) then 
                    local oscar = 'mate:'..msg.to.id 
                    redis:set(oscar, true) 
                    local text = ' تم كتم جميع الوسائط مع تحذير🔕 ' 
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'wr media' and not is_momod(msg) then 
local text = 'للمشرفين فقط🔴' 
reply_msg(master, text, ok_cb, true) 

    elseif matches[1] == 'uwr media'  and is_momod(msg) then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(oscar) 
    local text = ' تم الغاء كتم الوسائط مع تحذير🔔' 
reply_msg(master, text, ok_cb, true) 
elseif matches[1] == 'uwr media' and not is_momod(msg) then 
local text = 'للمشرفين فقط🔴' 
reply_msg(master, text, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^[!/#](wr media)$", 
    "^[!/#](uwr media)$" 
    }, 
run = run, 
    pre_process = pre_process 
} 

end 
--MASTER TEAM -_-

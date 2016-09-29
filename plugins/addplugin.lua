--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "
do 
local function run(msg,matches) 
if is_sudo(msg) and msg.text then 
local name = matches[1] 
local file = matches[3] 
local master = get_receiver(msg) 

fi = io.open("./plugins/".. name..".lua","w+") 
fi:write(file) 
fi:close() 
send_large_msg(master,"تم👍🏻اضافه الملف📁"..name..".lua",ok_cb,false) 
end 

end 
return { 
 patterns = { 
  "/add (.*) (-) \n(.*)" 
  }, 
  run = run 
 } 

end 
--MASTER TEAM -_-

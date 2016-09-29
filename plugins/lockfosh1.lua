--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 

local function masterteam(msg, matches) 
local master = msg['id'] 
  if matches[1] == "/lk fosh" then 
     local on = 'on:'..msg.to.id
     redis:set(on, true)
     local text = "تم تفعيل منع كلمات سيئة 🤐😈"
     reply_msg(master, text, ok_cb, true) 
  end
  

  if matches[1] == "/ulk fosh" then
     local on = 'on:'..msg.to.id
     redis:del(on)
     local text = "تم ايقاف منع كلمات سيئة 😄👍"
     reply_msg(master, text, ok_cb, true) 
  end


  if matches[1] == "صنع" then
     --return "  "

  end
end 

return { 
  patterns = { 
     "(.*)"
  }, 
  run = masterteam, 
} 

end 
--MASTER TEAM -_-

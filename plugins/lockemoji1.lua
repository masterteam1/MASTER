--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 

local function masterteam(msg, matches) 
local reply_id = msg['id'] 
  if matches[1] == "/lk emoji" then 
     local emojx = 'emojx:'..msg.to.id 
     redis:set(emojx, true) 
     local master = " تم تفعيل قفل الايموجي داخل المجموعة😜🤘🏿 " 
     reply_msg(reply_id, master, ok_cb, true) 
  end 

  if matches[1] == "/ulk emoji" then 
     local emojx = 'emojx:'..msg.to.id 
     redis:del(emojx) 
     local master = " تم الغاء قفل الايموجي داخل المجموعة😜🤘🏿 " 
     reply_msg(reply_id, master, ok_cb, true) 
  end 

  if matches[1] == "صنع" then 
     --return "" 

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

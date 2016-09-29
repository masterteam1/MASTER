--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 

local function masterteam(msg, matches) 
  local reply_id = msg['id'] 
  if matches[1] == "/kick emoji" then 
     local emojx = 'emojx:'..msg.to.id 
     redis:set(emojx, true) 
     local master = " تم قفل الايموجي مع الطرد{✔️}😈 " 
     reply_msg(reply_id, master, ok_cb, true)
  end 

  if matches[1] == "/ukick emoji" then 
     local emojx = 'emojx:'..msg.to.id 
     redis:del(emojx) 
     local master = " تم فتح الايموجي مع الطرد{✔️}😹 " 
     reply_msg(reply_id, master, ok_cb, true)
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

--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 

local function masterteam(msg, matches)
local master = msg['id'] 
  if matches[1] == "/lk zahif" then 
     local zahif = 'zahif:'..msg.to.id 
     redis:set(zahif, true) 
     local text = " تم قفل  كلمات الزواحف في المجموعة{✔️}😉❤️ " 
     reply_msg(master, text, ok_cb, true) 
  end 

  if matches[1] == "/ulk zahif" then 
     local zahif = 'zahif:'..msg.to.id 
     redis:del(zahif) 
     local text = " تم فتح  كلمات الزواحف في المجموعة{✔️}😅❤️ " 
     reply_msg(master, text, ok_cb, true) 
  end 

  if matches[1] == "صنع" then 
     --return " " 

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

--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 

local function masterteam(msg, matches)
local master = msg['id'] 
  if matches[1] == "/kick spamer" then 
     local spamerx = 'spamerx:'..msg.to.id 
     redis:set(spamerx, true) 
     local text = " تم قفل مضاد الجيوش مع الطرد{✔️}😈 " 
     reply_msg(master, text, ok_cb, true) 
  end 

  if matches[1] == "/ukick spamer" then 
     local spamerx = 'spamerx:'..msg.to.id 
     redis:del(spamerx) 
     local text = " تم فتح مضاد الجيوش في المجموعة{✔️}😈 " 
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

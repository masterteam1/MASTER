--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 
local function master(msg, matches) 
if ( msg.text ) then
  if ( msg.to.type == "user" ) then
     return "اهلاً في الرد الألي لبوت MASTER\n لتحدث مع مبرمج البوت ادخل المعرف @Mortadha1997\nللدخول الى مجموعة الدعم:\nhttps://telegram.me/joinchat/Ay1Ox0ErjRMiPi3YbpJ6rw\nاول ارسل:\n/join master su\nقناة السورس:\n@Master_CH"
    end 
  end 
end 
return { 
  patterns = { 
     "(.*)$"
  }, 
  run = master 
} 

end 
--MASTER TEAM -_-

--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do
local function run(msg,matches)
local reply_id = msg['id']
if not is_momod(msg) and matches[1]== 'help' then
  local master = [[      💠 HMEMBER 💠
    🌐 قائمة اوامر الاعضاء 🌐
🔸➖🔸➖🔸➖🔸➖🔸
🎭/kkme  :  للمغادره
🎭/rules  :  قوانين المجموعه
🎭/version :  معلومات السورس
🎭/date  :  التاريخ
🎭/fullinfo  :  يجب عليك املاء المعلومات الاتيه
🎗/setnkname
🎗/setage
🎗/setsex
🎗/setnote
🔹➖🔹➖🔹➖🔹➖🔹
💠/join master su
للأنضمام الى مجموعة الدعم ...
‎قناة البوت 🌐 :
🔲 @Master_CH 🔘
🌐 تم تطوير البوت بواسطة 🔱
@Mortadha1997 🔰
🔸➖🔸➖🔸➖🔸➖🔸
🌐M A S T E R®💠BOT💠
Copyright © 2016.MASTER™]]
reply_msg(reply_id, master, ok_cb, false)
end

local reply_id = msg['id']
if  is_momod(msg) then
local master = "للمشرفين فقط 🖕🏿😎"
reply_msg(reply_id, maste, ok_cb, false)
end

end
return {
patterns ={
  "^[!#/](help)$",
},
run = run
}
end
--MASTER TEAM -_-

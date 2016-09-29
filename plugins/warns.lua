--MASTER TEAM
do 
local function run(msg,matches) 
local reply_id = msg['id'] 
if is_momod(msg) and matches[1]== 'hwarn' then 
  local master = [[💠 HWARN 💠
  🌐 اوامر الحمايه بالتحذير 🌐
🔸➖🔸➖🔸➖🔸➖🔸
عزيزي المستخدم 👁‍🗨 استخدم :
🔒/wr  :  لقفل الاوامر التاليه
🔓/uwr :  لفتح قفل الاوامر التاليه
‎*ضع مسافه واحده بين الامرين 💭
🔹➖🔹➖🔹➖🔹➖🔹
💭media   جميع الميديا
💭photo   الصور
💭video   الفيديو
💭audio   البصمات
💭fwd   اعادة التوجيه
💭link   الروابط
🔸➖🔸➖🔸➖🔸➖🔸
🌐M A S T E R®💠BOT💠
Copyright © 2016.MASTER™]]
reply_msg(reply_id, master, ok_cb, false) 
end 

local reply_id = msg['id'] 
if not is_momod(msg) then 
local master = "فَقًطِ لُلُمٌشِرَفَيَنَ ْعزُيَزُيَ" 
reply_msg(reply_id, master, ok_cb, false) 
end 

end 
return { 
patterns ={ 
  "^[!#/](hwarn)$", 
}, 
run = run 
} 
end

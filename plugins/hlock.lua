--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do 

local function masterteam(msg,matches) 

local reply_id = msg['id'] 
if is_momod(msg) and matches[1]== 'hlock' then 
  local master = [[💠 HLOCK 💠
    🌐 قائمة اوامر الحمايه 🌐
🔸➖🔸➖🔸➖🔸➖🔸
عزيزي المستخدم 👁‍🗨 استخدم :
🔒/lk  :  لقفل الاوامر التاليه
🔓/ulk :  لفتح قفل الاوامر التاليه
‎*ضع مسافه واحده بين الامرين 💭
🔹➖🔹➖🔹➖🔹➖🔹
✔️ LOCKS |  اوامر القفل 🔐
🔐 links   الروابط
🔐fwd   اعادة التوجيه
🔐spam   السبام
🔐rtl   الدخول الجماعي
🔐flood   التكرار
🔐sticker   الملصقات
🔐file   الملفات
🔐contacts   جهات الاتصال
🔐strict   الدخول للمجموعه
🔐reply   الردود
🔐emoji   الايموجي
🔐fosh   الكلمات السيئه
🔐bots   البوتات
🔐spamer   كلمات الجيوش
🔐zahif   كلمات الزواحف
🔐join   الدخول بالرابط
🔐leave   مغادرة المجموعه
🔐arabic   اللغه العربيه
🔐english   اللغه الانكليزيه
🔐tg   رسالة الترحيب
🔐all   جميع الاوامر 🔺
‎📍مثال : لقفل الامر all استخدم :
‏🚩/lk all
ولفتح القفل استخدم :
‏🚩/ulk all
🔹➖🔹➖🔹➖🔹➖🔹
✔️ MUTES |  اوامر الكتم 🔕
🔕text   النص
🔕photo   الصور
🔕audio   البصمات
🔕video   الفيديو
🔕gifs   الصور المتحركه
🔕doc   الملفات
🔕all   كل الاوامر 🔺
🔹➖🔹➖🔹➖🔹➖🔹
🎖/settings : اعدادات اوامر القفل
🎖/muteslist : اعدادات اوامر الكتم
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
  "^[!#/](hlock)$", 
}, 
run = masterteam
} 
end
--MASTER TEAM -_-

--MASTER TEAM
do 

local function master(msg,matches) 

local reply_id = msg['id'] 
if is_momod(msg) and matches[1]== 'hban' then 
  local banhelp = [[💠 HBAN 💠
    🌐 اوامر الطرد والحظر 🌐
🔸➖🔸➖🔸➖🔸➖🔸
💡/kk : طرد عضو
💡/ban : حظر عضو
💡/uban : فتح الحظر 
💡/blist : قائمة المحظورين
🔹➖🔹➖🔹➖🔹➖🔹
✔️BADWORDS | الكلمات السيئه
🎖/addw + كلمه : اضافة كلمه ممنوعه
🎖/remw + كلمه : حذف كلمه ممنوعه
🎖/bwords : الكلمات الممنوعه
🎖/ cbwords : حذف الكلمات الممنوعه
🔹➖🔹➖🔹➖🔹➖🔹
✔️SILENTS | كتم الاعضاء
🎭/silent : كتم عضو
🎭/silentlist : قائمة الاعضاء المكتومين
🎭/cleab silentlist : حذف قائمة المكتومين
🔸➖🔸➖🔸➖🔸➖🔸
🌐M A S T E R®💠BOT💠
Copyright © 2016.MASTER™]]
reply_msg(reply_id, banhelp, ok_cb, false) 
end 

local reply_id = msg['id'] 
if not is_momod(msg) then 
local banhelp = "للمشرفين فقط 🖕🏿😎" 
reply_msg(reply_id, banhelp, ok_cb, false) 
end 

end 
return { 
patterns ={ 
  "^[!#/](hban)$", 
}, 
run = master
} 
end 
--  MASTER TEAM -_-

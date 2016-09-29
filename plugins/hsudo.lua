--MASTER TEAM
do
local function run(msg,matches)
if is_sudo(msg) and matches[1]== "hsudo" then
local text = [[💠 HSUDO 💠
     🌐 قائمة اوامر المطور 🌐
🔸➖🔸➖🔸➖🔸➖🔸
🌐/add
🌐/rem
🌐/creategroup
🌐/tosuper
🌐/setowner
🌐/radio
🌐/shortlink
🌐/time
🌐/date
🌐/tr
🌐/addbot + link
🌐/music
🌐/chats
🌐/setexp
🌐/exp
🌐/post
🎭/serverinfo
🎭/update
🎭/run
🎭/redis
🔸➖🔸➖🔸➖🔸➖🔸
🌐M A S T E R®💠BOT💠
Copyright © 2016.MASTER™]]
return text
end
     if not is_sudo(msg) then
      return "only devs😈✋"
     end 
  end
 
return {
patterns ={
  "^[!/#](hsudo)$"
},
run = run
}
end

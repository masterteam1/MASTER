do

local function run(msg, matches)
local user = msg.from.id
local chat = msg.to.id
 local kik = 'kik:'..msg.to.id
  if redis:get(kik) then
       if not is_momod(msg) then 
          delete_msg(msg.id, ok_cb, true)
          kick_user(user, chat)
end 
end
end

return {  
  patterns = {
       "^(كس)$",
       "^(كس خواتكم)$",
       "^(عير)$",
       "^(عير بخواتكم)$",
       "^(كسختك)$",
       "^(كسمك)$",
       "^(عير بيك)$",
       "^(منيوك)$",
       "^(كحبة)$",
       "^(اكحاب)$",
       "^(فروخ)$"
  },
  run = run,
}

end

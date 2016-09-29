do 

local function run(msg, matches) 
 local user = msg.from.id
 local chat = msg.to.id
 local kzahif = 'kzahif:'..msg.to.id 
  if redis:get(kzahif) then 
       if not is_momod(msg) then 
          delete_msg(msg.id, ok_cb, true) 
          kick_user(user, chat)
end 
end 
end 

return { 
  patterns = { 
       "^(تعال خاص)$", 
       "^(تعالي خاص)$", 
       "^(ازحف)$", 
       "^(زحف)$", 
       "^(زاحف)$", 
       "^(خاص)$", 
       "^(ممكن خاص)$", 
       "^(بالخاص)$"
  }, 
  run = run, 
} 

end 
--MASTER TEAM -_-

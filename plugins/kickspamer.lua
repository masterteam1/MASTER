do 

local function run(msg, matches) 
local user = msg.from.id
local chat = msg.to.id
 local spamerx = 'spamerx:'..msg.to.id 
  if redis:get(spamerx) then 
       if not is_momod(msg) then 
          delete_msg(msg.id, ok_cb, true) 
          kick_user(user, chat)
end 
end 
end 

return { 
  patterns = { 
       "^(جيش)$", 
       "^(جيوش)$", 
       "^(ابعص)$", 
       "^(فروخ)$", 
       "^(افلش)$", 
       "^(تفليش)$", 
       "^(TIQ)$", 
       "^(HSK)$", 
       "^(انكح)$", 
       "^(بعص)$", 
       "^(كووايد)$" 
  }, 
  run = run, 
} 

end 
--MASTER TEAM -_-

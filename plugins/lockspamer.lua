do 

local function run(msg, matches) 
local monster = msg['id'] 
 local spamer = 'spamer:'..msg.to.id 
  if redis:get(spamer) then 
       if not is_momod(msg) then 
          delete_msg(msg.id, ok_cb, true) 
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
-- @dev_2
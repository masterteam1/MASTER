do 

local function run(msg, matches) 
 local zahif = 'zahif:'..msg.to.id 
  if redis:get(zahif) then 
       if not is_momod(msg) then 
          delete_msg(msg.id, ok_cb, true) 
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
-- @dev_2
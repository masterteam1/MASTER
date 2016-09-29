do 

local function oscarteam(msg, matches) 
  if matches[1] == "/lock spamer" then 
     local spamer = 'spamer:'..msg.to.id 
     redis:set(spamer, true) 
     return " تم قفل الجيوش ممنوع التكلم عنها في المجموعة🌝❤️ " 
  end 

  if matches[1] == "/unlock spamer" then 
     local spamer = 'spamer:'..msg.to.id 
     redis:del(spamer) 
     return " تم فتح الجيوش يمكنك التكلم عنها في المجموعة🌝❤️ " 
  end 

  if matches[1] == "صنع" then 
     --return " cods simsim by @iq_plus and @dev_2 " 

  end 
end 

return { 
  patterns = { 
     "(.*)" 
  }, 
  run = oscarteam, 
} 

end 
-- @dev_2
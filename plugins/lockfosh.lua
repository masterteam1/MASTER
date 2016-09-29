do

local function run(msg, matches)
 local on = 'on:'..msg.to.id
  if redis:get(on) then
       if not is_momod(msg) then 
          delete_msg(msg.id, ok_cb, true)
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
-- @dev_2
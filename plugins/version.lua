do 

local function master(msg, matches) 
local reply_id = msg['id'] 
if is_momod(msg) and matches[1]== 'version' then 
local text = [[ 
source created by @Mortadha1997 👾 
source channel 💡 @Master_CH 💡 
source on GitHub :
https://github.com/masterteam1/MASTER.git

〰〰〰〰〰〰〰〰〰〰〰〰 
💠 MASTER BOT v2.0 NEW 💠 
]] 
reply_msg(reply_id, text, ok_cb, true) 
end

local reply_id = msg['id'] 
if not is_momod(msg) then 
local text = [[ 
source created by @Mortadha1997 👾 
source channel 💡 @Master_CH 💡 
source on GitHub :
https://github.com/masterteam1/MASTER.git

〰〰〰〰〰〰〰〰〰〰〰〰 
💠 MASTER BOT v2.0 NEW 💠 
]] 
reply_msg(reply_id, text, ok_cb, true) 
end 

end
return { 
  patterns = { 
       "^[!/#](version)$", 
  }, 
  run = master, 
} 

end 
--MASTER TEAM -_-

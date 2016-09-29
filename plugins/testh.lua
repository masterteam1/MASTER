--MASTER TEAM
do 

local function prince(msg ,matches) 
        if is_sudo(msg) then 
local url = "http://a.top4top.net/p_19608ao0.png" 
local master = download_to_file(url,'DeaD.jpg') 
  send_photo(get_receiver(msg),master,ok_cb,false)
        end 
end 

return { 
    patterns = { 
        "^(devhelp)$" 
    }, 
    run = prince, 
} 
--MASTER TEAM 
end 

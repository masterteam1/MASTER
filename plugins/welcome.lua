--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do
    
local function master(msg,matches)
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_tgservice'] then
                group_tgservice_lock = data[tostring(msg.to.id)]['settings']['lock_tgservice']
            end
        end
    end
    if matches[1] == "chat_add_user" and group_tgservice_lock == 'no'  then
        local master = 'Welcome 😊👋 in the group👥🔕'..'\n'..'\n'
    ..'⚜ψøuƦ ภค๓є🔰: :  '..msg.action.user.first_name..'\n'
    ..'⚜ψøuƦ  ยรєгภค๓є🔰:: @'..(msg.action.user.username or "Not")..'\n'
    ..'⚜ψøuƦ 🆔  : '..msg.action.user.id..'\n'
    ..'📱ψøuƦ ภย๓๒єг🔰: '..(msg.action.user.phone or "Not")..'\n'
    ..'🔻➖🔺➖🔻➖🔺➖🔻'..'\n'
    ..'⚜ɠг๏ยթ ภค๓є🔰: : '..msg.to.title..'\n'
    ..'⚜ɠг๏ยթ 🆔 : '..msg.to.id..'\n'
    ..'🔻➖🔺➖🔻➖🔺➖🔻'..'\n'
    ..'⚜ค๔๔є๔ ภค๓є🔰: '..msg.from.print_name..'\n'
    ..'⚜ค๔๔є๔ ยรєг🔰:: @'..(msg.from.username or "Not")..'\n'
    ..'⚜ค๔๔є๔ 🆔: '..msg.from.id..'\n'
    ..'⚜ค๔๔є๔  ภย๓๒єг🔰 : '..(msg.from.phone or "Not")..'\n'
    ..'🔻➖🔺➖🔻➖🔺➖🔻'..'\n'
    ..'🌐 Channel : @Master_CH'..'\n'
        return reply_msg(msg.id, master, ok_cb, false)
  end
  if matches[1] == "chat_add_user_link" and group_tgservice_lock == 'no' then
      local master =  'Welcome 😊👋 in the group👥🔕'..'\n'..'\n'
    ..'⚜ψøuƦ ภค๓є🔰:   '..msg.action.user.first_name..'\n'
    ..'⚜ψøuƦ  ยรєгภค๓є🔰: @'..(msg.action.user.username or "Not")..'\n'
    ..'⚜ψøuƦ 🆔  : '..msg.action.user.id..'\n'
    ..'📱ψøuƦ ภย๓๒єг🔰: '..(msg.action.user.phone or "Not")..'\n'
    ..'🔻➖🔺➖🔻➖🔺➖🔻'..'\n'
    ..'⚜ɠг๏ยթ ภค๓є🔰:  '..msg.to.title..'\n'
    ..'⚜ɠг๏ยթ 🆔 : '..msg.to.id..'\n'
    ..'🔻➖🔺➖🔻➖🔺➖🔻'..'\n'
    ..'🌐 Channel : @Master_CH'..'\n'
        return reply_msg(msg.id, master, ok_cb, false)
    end
     if matches[1] == "chat_del_user" and group_tgservice_lock == 'no'  then 
       local bye_name = msg.action.user.username or msg.action.user.first_name
       return "BYE @"..bye_name.." !"
   end 
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
        "^!!tgservice (chat_del_user)$",
    },
 run = master
}
end
--MASTER TEAM -_-

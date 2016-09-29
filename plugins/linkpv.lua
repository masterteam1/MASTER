--" ╭━╮╭━╮╱╱╱╱╱╭╮               "
--" ┃┃╰╯┃┃╱╱╱╱╭╯╰╮              "      
--" ┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━╮           "
--" ┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫           "
--" ┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃             "
--" ╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯             "

do

function masterteam(msg, matches)
local reply_id = msg['id']
       if not is_momod(msg) then
        local master = "فقط للمشرفين عزيزي"
        reply_msg(reply_id, master, ok_cb, true) 
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        local master = "لا يوجد رابط للمجموعه.. قم بأنشاء رابط اولا."
        reply_msg(reply_id, master, ok_cb, true) 
       end
         local text = "رابط المجموعه:\n"..group_link
          send_large_msg('user#id'..msg.from.id, text, ok_cb, false)
           local master = "تم ارسال الرابط .."
           reply_msg(reply_id, master, ok_cb, true) 
end

return {
  patterns = {
    "^[/#!]([Ll]inkpv)$"
  },
  run = masterteam
}

end
--MASTER TEAM -_-

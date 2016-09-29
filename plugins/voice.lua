do
local function master(msg, matches)
  local url = "http://tts.baidu.com/text2audio?lan=en&ie=UTF-8&text="..matches[1]
  local receiver = get_receiver(msg)
  local file = download_to_file(url,'text.mp3')
      send_audio('channel#id'..msg.to.id, file, ok_cb , false)
      return reply_msg(msg.id, 'Now I send to you voice massege', ok_cb, false)
end

return {
  description = "Conversion text to voice",
  usage = {
    "/voice [text]"
  },
  patterns = {
    "^[!#/]voice (.+)$"
  },
  run = master,
}

end
--MASTER TEAM -_-

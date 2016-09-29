do

local function run(msg, matches)
if is_sudo(msg) then
     return "(--You Sudo--)".."\n".."(🆔Your ID ) "..msg.from.id.."\n".."(♐️Your Name): "..msg.from.first_name.."\n".."(♒️Your user) @"..msg.from.username.."\n".."(💟GP NAME) "..msg.to.title
end

if is_momod(msg) then 
        return "(--You Admin--)".."\n".."(🆔Your ID ) "..msg.from.id.."\n".."(♐️Your Name): "..msg.from.first_name.."\n".."(♒️Your user) @"..msg.from.username.."\n".."(💟GP NAME) "..msg.to.title  
end
if not is_momod(msg) then 
        return "(--You Member--)".."\n".."(🆔Your ID ) "..msg.from.id.."\n".."(♐️Your Name): "..msg.from.first_name.."\n".."(♒️Your user) @"..msg.from.username.."\n".."(💟GP NAME) "..msg.to.title
end
if is_owner(msg) then 
        return "(--You Owner--)".."\n".."(🆔Your ID ) "..msg.from.id.."\n".."(♐️Your Name): "..msg.from.first_name.."\n".."(♒️Your user) @"..msg.from.username.."\n".."(💟GP NAME) "..msg.to.title
end
end

return {  
  patterns = {
       "^[!#/]([Mm]e)$"
  },
  run = run,
}

end
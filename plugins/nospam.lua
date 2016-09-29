do 
function run(msg, matches) 
if msg.media and not is_momod(msg)  then 
return "ممنوع ارسال الصور في هذا المجموعة يا \n\n".."USERNAME @"..msg.from.username.."\n".."⚠NAME "..msg.from.first_name 
else 
return msg
end 
end 
return { 
  patterns = { 
"%[(photo)%]" 


  }, 
run = run 
} 
end

-- made by { @Mortadha1997 }
do
ws = {}
rs = {}

-- some examples of how to use this :3 
ws[1] = "هلو" -- msg 
rs[1] = "هلوات عيني😜" -- reply

--ws[2] = "شلونكم" -- msg
rs[2] = " احسن منك 😂" -- reply

ws[3] = "نجب" -- msg
rs[3] = "اتجاوزك باخلاقي😑" -- reply

ws[4] = "احبك" -- msg 
rs[4] = "حبك برص😒" -- reply

ws[5] = "تعال خاص"
rs[5] = "ها شسون 😉"

ws[6] = "احبج" -- msg 
rs[6] = "يخي احترم شعوري😢" -- reply

ws[7] = "واكف" -- msg 
rs[7] = "يخي مابيه شي ليش تتفاول😢" -- reply

ws[8] = "@Mortadha1997" -- msg 
rs[8] = "يخي نايم بعليك😂 من يجي اكله" -- reply

ws[9] = "البوت واكف" -- msg 
rs[9] = "هياتني 😐" -- reply 

ws[10] = "صدك" -- msg 
rs[10] = "متشاقي وياك كبل😕" -- reply

ws[11] = "اريد كروب" -- msg 
rs[11] = "☺كول لهذا  @Mortadha1997" -- reply

--ws[12] = "لك معليك اني و ضلعي" -- msg 
rs[12] = "😐اوك اثف"  -- reply

ws[13] = "😂" -- msg 
rs[13] = " •❤•فٌدِيـ❤ـِـْْت هلضحكه•❤•"

ws[14] = "وكف البوت" -- msg 
rs[14] = "😐 شلون راح اطردك" -- reply

--ws[15] = "كم بي" -- msg 
rs[15] = "😴لتتلزك" -- reply

ws[16] = "دي" -- msg 
rs[16] = "👺خليني حبك" -- reply

--ws[17] = "مرحبا" -- msg 
rs[17] = "مراحب نورت عيني😌" -- reply

--ws[18] = "خاب" -- msg 
rs[18] = "بيك" -- reply

--ws[19] = "انجب" -- msg 
rs[19] = "يخي اتجاوزك بخلاقي😑" -- reply

ws[20] = "كحاب" -- msg 
rs[20] = "امك وخواتك😈 لتجاوز تنطرد" -- reply

ws[21] = "افلش" -- msg 
rs[21] = "باند عام من 30 بوت😉" -- reply

--ws[22] = "امير وين" -- msg 
rs[22] = "كلي هسه اجي 😕" -- reply

--ws[23] = "ورده" -- msg 
rs[23] = "قندرتك فرده وفرده 😂" -- reply

--ws[24] = "امير" -- msg 
rs[24] = "بريض😷" -- reply

--ws[25] = "صوف" -- msg 
rs[25] = "؏ـيــ❦ـونةة لصــوف 😻❤️" -- reply

ws[26] = "بوسني" -- msg 
rs[26] = "ممممممممممححححح😍😘💋" -- reply

ws[27] = "عبك" -- msg 
rs[27] = "اخرب عليك😍💋" -- reply

ws[28] = "تعال اتزوجك" -- msg 
rs[28] = "ايييي يله هاج معبس💍😍" -- reply

ws[29] = "حبيبي" -- msg 
rs[29] = "عيون حبيبي😍" -- reply

ws[30] = "تحبني لو لا" -- msg 
rs[30] = "اي شعندي غيرج ملاك😍" -- reply

ws[31] = "يومه فدوه" -- msg 
rs[31] = "فدؤه الج حياتي 😍😙" -- reply

ws[32] = "شلونك بوت" -- msg 
rs[32] = " الحمد لله وانت😍😙" -- reply

--ws[33] = "ضلعه"
rs[33] = " انجب مو ضلعتك/ج اني 🙌"

--ws[34] = "ضلع"
rs[34] = "انجب مو ضلعك/ج  اني 🙌"

ws[35] = "غبي"
rs[35] = "مو اغبه منك 😒"

ws[36] = "تف"
rs[36] = "عيب ابني تتفل اكبر شوية 🌚😂"

ws[37] = "امداج"
rs[37] = "امداج انتي😐"

ws[38] = "امداك"
rs[38] = " امداك/ج انت 😒"

ws[39] = "شدسون"
rs[39] = "نطبخ😐"

--ws[40] = "هع"
rs[40] = " هعهاعه التهعهع عظامك😂😂✋🏿"

ws[41] = "معليك"
rs[41] = " عليه ونص 😂"

ws[42] = "لتحجي"
rs[42] = " وانت شعليك حاجي من حلگگ😒"

--ws[43] = "اكلك"
rs[43] = "كلي وما كول لاحد 😉"

ws[44] = "ضوجه"
rs[44] = "شسوي اركصلك ؟"

--ws[45] = "احترم نفسك"
rs[45] = "احترمه انته بل بدايه 😶"

ws[46] = "تعالي خاص"
rs[46] = "ها شسون 😉"



-- the main function
function run( msg, matches )
	-- just a local variables that i used in my algorithm  
	local i = 0; local w = false

	-- the main part that get the message that the user send and check if it equals to one of the words in the ws table :)
	-- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
	for k,v in pairs(ws) do
		-- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern 
		if ( string.find(string.upper(msg.text), "^" .. string.upper(v) .. "$") ) then
			-- assign the { i } to the index of the reply and the { w } to true ( we will use it later )
			i = k; w = true;
		end
	end

	-- check if { w } is not false and { i } not equals to 0
	if ( (w ~= false) and (i ~= 0) ) then
		-- get the receiver :3 
		R = get_receiver(msg)
		-- send him the proper message from the index that { i } assigned to
		send_large_msg ( R , rs[i] );
	end
	
	-- don't edit this section
	if ( msg.text == "about" ) then
		if ( msg.from.username == "Mortadha1997" ) then
			R = get_receiver(msg)
			send_large_msg ( R , "Made BY @Mortadha1997" );
		end
	end 

end



return {
	patterns = {
		"(.*)"		
  	},
  	run = run
} 


end
--MASTER TEAM

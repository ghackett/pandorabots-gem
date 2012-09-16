A simple ruby api for http://www.pandorabots.com/
See http://www.pandorabots.com/botmaster/en/faq#h2 for api info

Usage (eventually):

	require "rubygems"
	require "pandorabots"
	
	response = Pandorabots.talk(bot_id, input, cust_id)
	
	if (response[:success])
		bot_id = response[:bot_id]
		cust_id = response[:cust_id]
		input = response[:input]
		ouput = response[:ouput]
	else
		error_message = response[:output]
	end
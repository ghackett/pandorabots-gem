require "rubygems"
require 'net/http'

module Pandorabots
  VERSION = "0.0.0"
  PANDORABOTS_URL = "http://www.pandorabots.com/pandora/talk-xml"
  
  #talk to a pandora bot
  def self.talk(bot_id, input, cust_id=nil)
    uri = URI.parse(PANDORABOTS_URL)
    params = {"botid" => bot_id, "input" => input}
    if cust_id
      params['custid'] = cust_id
    end
    response = Net::HTTP.post_form(uri, params)
    
    if (response && response.code.to_i >= 200 && response.code.to_i < 300)
      return response.body
    else
      return nil
    end
  end
end
require "rubygems"
require 'net/http'
require "xmlsimple"

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
      hash =  XmlSimple.xml_in(response.body)
      if hash["status"].to_i == 0
        result = {
          :success => true,
          :bot_id => hash["botid"], 
          :cust_id => hash["custid"], 
          :input => hash["input"][0], 
          :output => hash["that"][0]}
        return result
      else
        result = {
           :success => false,
           :bot_id => hash["botid"], 
           :cust_id => hash["custid"], 
           :input => hash["input"][0], 
           :output => hash["message"][0]}   
        return result
      end
    else
      p response.body
      return nil
    end
  end
end
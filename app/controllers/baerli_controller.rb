class BaerliController < ApplicationController
  def index
  end

  def text
  	twilio_sid = "AC8b529193ecf93b1132e81e62009dfa02"
	twilio_token = "3381411d6ff5d816d1b02f8d9d9c0e12"
	twilio_phone_number = "+15077880701"
 
	@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
	@twilio_client.account.sms.messages.create(
	:from => "+15077880701",
	:to => "+4917664076045",
	:body => "Hör auf rumzuzicken, mausi. Du bist die allersüßeste Mausi der Welt! :-* Bis ganz bald. Ich liebe dich.  "
	)

  end

  def call

  	twilio_sid = "AC8b529193ecf93b1132e81e62009dfa02"
	twilio_token = "3381411d6ff5d816d1b02f8d9d9c0e12"
	twilio_phone_number = "+4915161003858"
 
	@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
	@twilio_client.account.calls.create(
	:from => "+4915161003858",
	:to => "+4915161003858",
	:url => "http://twimlets.com/forward?PhoneNumber=%2B4917664076045&"
	)

  end

  def voice

  	twilio_sid = "AC8b529193ecf93b1132e81e62009dfa02"
	twilio_token = "3381411d6ff5d816d1b02f8d9d9c0e12"
	twilio_phone_number = "+4915161003858"
 
	@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
	@twilio_client.account.calls.create(
	:from => "+4915161003858",
	:to => "+4917664076045",
	:url => "http://twimlets.com/message?Message%5B0%5D=I%20love%20you%2C%20darling.%20I%20wish%20you%20a%20great%20night%20and%20awesome%20dream"
	)



  end

end

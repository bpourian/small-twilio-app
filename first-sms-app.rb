require 'bundler'
Bundler.require()
#require "twilio-ruby" #Tell ruby that we require this gem
#put your credentials here, get them at twilio.com
account_sid = "ACfghdhj67628237827hj2h9h98d338"
auth_token = "ee782781u3hjk3ku83hd8839d89h9d8"

#set up a client to talk to the twilio REST API
@client = Twilio::REST::Client.new(account_sid, auth_token)

#send an sms
@client.messages.create(
  from: "+44twilio_number",
  to: "+44verified_number",
  body: "I\'ve learnt about a new technology this morning"
)

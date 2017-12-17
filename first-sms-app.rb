require 'bundler/setup'
#require "twilio-ruby" #Tell ruby that we require this gem
#put your credentials here, get them at twilio.com
account_sid = 'ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
auth_token = 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'

#set up a client to talk to the twilio REST API
client = Twilio::REST::Client.new account_sid, auth_token

#send an sms
client.accounts.sms.message.create(
  :from => '+786366335633',
  :to => '+334438838383',
  :body => 'I\'ve learnt about a new technology this morning'
)

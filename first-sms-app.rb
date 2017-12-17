require "twilio-ruby" #Tell ruby that we require this gem
#put your credentials here, get them at twilio.com
account_sid = 'ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
auth_token = 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'

#set up a client to talk to the twilio REST API
client = Twilio::REST::Client.new account_sid, auth_token

#send an sms
client.account.sms.message.create(
  :from => '+122002020202',
  :to => '+928828282282',
  :body =. 'I\'ve learnt about a new technology this morning'
)

# TwilioRest a module to send the message through twilio client
module TwilioRest
def send_message(phone_number,activation_token)
  number_to_send_to =  '+919990760165'
  @twilio_client = Twilio::REST::Client.new('ACf85c4315f2e42d9c9ce3301343f01c5b', 'e2f8125f4b400649c1c7d40aa4028474')

 @twilio_client.messages.create(
                :from => '+15109240308',
                :to => number_to_send_to,
                :body =>"Security Code is kk"
                )
end

end
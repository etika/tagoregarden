# TwilioRest a module to send the message through twilio client
module TwilioRest
def send_message(phone_number,activation_token)
  number_to_send_to =  '+91'+phone_number
  # @twilio_client = Twilio::REST::Client.new('ACa1c33e9559e054481e725e40442a4003', 'f618f30bc6511fbc79b93fe3e13cccb7')
  @twilio_client = Twilio::REST::Client.new('ACf85c4315f2e42d9c9ce3301343f01c5b', 'e2f8125f4b400649c1c7d40aa4028474')

 @twilio_client.messages.create(:from => '+15005550006',:to => number_to_send_to,:body =>"Security Code is kk")
end

end
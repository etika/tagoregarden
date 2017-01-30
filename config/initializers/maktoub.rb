require "ostruct"

class Subscriber < OpenStruct
  def unsubscribe
    self.newsletter = false
  end
end
Maktoub.from = "Etika Ahuja <etikaahuja@gmail.com>" # the email the newsletter is sent from
Maktoub.twitter_url = "http://twitter.com/etikaaa#!/twitter" # your twitter page
Maktoub.facebook_url = "https://www.facebook.com/etikahuja" # your facebook page
Maktoub.linkedin_url = "https://www.linkedin.com/in/etika-ahuja/" # your linkedin page
# Maktoub.subscription_preferences_url = "http://example.com/manage_subscriptions" #subscribers management url
Maktoub.logo = "logo.png" # path to your logo asset
Maktoub.home_domain = "localhost:3000" # your domain
Maktoub.app_name = "tagoregarden" # your app name
Maktoub.unsubscribe_method = "unsubscribe" # method to call from unsubscribe link (doesn't include link by default)

# pass a block to subscribers_extractor that returns an object that  reponds to :name and :email
# (fields can be configured as shown below)

# users=[]
# Maktoub.subscribers_extractor do
#   (1..5).map do |i|
#     users << OpenStruct.new({name: "tester#{i}", email: "test#{i}@example.com"})
#   end
#       # users = [OpenStruct.new(name: 'etika ahuja', email: 'etikaahuja@gmail.com')]

# end

USERS = (1..5).map do |i|
  Subscriber.new(name: "tester#{i}", email: "test#{i}@example.com", newsletter: true)
end

Maktoub.subscribers_extractor do
  USERS.select(&:newsletter)
end
# uncomment lines below to change subscriber fields that contain email and
# Maktoub.email_field = "etikaahuja@gmail.com"
# Maktoub.name_field = "Etika"

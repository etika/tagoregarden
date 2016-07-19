FactoryGirl.define do
  factory :user, class: User do 
    first_name "Etika"
    last_name "Ahuja"
    email "etikaahuja@gmail.com"
    password 'password'
    password_confirmation 'password'
    # after(:build) { |o| o.class.skip_callback(:create, :after, :confirm_email) }
  after :create do |r|
      customer_role = Role.find_by_name("customer")
      if customer_role.present?
        r.roles << customer_role
      else
        r.roles << FactoryGirl.create(:customer)
      end
    end
  end

end
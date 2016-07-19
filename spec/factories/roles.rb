# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :customer, class: Role  do
    name "customer"
  end

  factory :business, class: Role do
    name "business"
  end

  factory :admin, class: Role do
    name "admin"
  end
end

FactoryGirl.define do
  factory :user do
    name 'Test Name'
    email {Faker::Internet.email}
    password 'password'
  end
end
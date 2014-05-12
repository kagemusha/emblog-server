# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    association :author, factory: :user
    title "MyString"
    body "MyString"
  end
end

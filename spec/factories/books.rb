# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    author 'John Doe'
    price 99
    title 'Example book'
  end
end

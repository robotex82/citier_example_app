# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pocket_dictionary do
    author 'John Doe'
    price 99
    title 'Example pocket dictionary'
  end
end

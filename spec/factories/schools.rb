# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :school do
    name "MyString"
    name_in_hindi "MyString"
    brief "MyString"
    established_in 1
    fee_id ""
    contact_no ""
  end
end

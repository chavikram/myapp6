# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    plot_no "MyString"
    street "MyString"
    colony "MyString"
    city "MyString"
    state "MyString"
    country "MyString"
    pin_code "MyString"
  end
end

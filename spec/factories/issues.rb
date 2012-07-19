# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :issue do
    issue "MyString"
    type ""
    comment "MyText"
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mapping do
    docs nil
    us_cfrs "MyString"
    japan "MyString"
    pic_s "MyString"
    eudralex "MyString"
    iso "MyString"
    ich "MyString"
  end
end

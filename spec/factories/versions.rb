# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :version do
    docs nil
    group_num "MyString"
    version_number 1
    comment "MyText"
    description_of_change "MyText"
    capa_number 1
    revision_type "MyString"
  end
end

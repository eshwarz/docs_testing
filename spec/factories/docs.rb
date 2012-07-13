# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :doc, :class => 'Docs' do
    doclink_ref_num "MyString"
    title "MyString"
    global_coord "MyString"
    parent "MyString"
    condor_ref_num "MyString"
    german_doc_num "MyString"
    author "MyString"
    chapter_name "MyString"
    training_type "MyString"
    comments "MyText"
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :request do
    requested_by "MyText"
    requested_date "2012-07-16"
    team_sponsor "MyString"
    request_type "MyString"
    proposed_version_number 1
    justification "MyText"
    description "MyText"
    sites "MyText"
    timeline "MyString"
    team "MyText"
    commitment "MyString"
    commitment_details "MyString"
    superseded_docs "MyText"
    training_impact "MyString"
    training_strategy "MyString"
    pqs_bmt_date "2012-07-16"
    pqs_bmt_decision_rationale "MyText"
    pqs_ct_date "2012-07-16"
    pqs_ct_decision_rationale "MyText"
    request_closed_date "2012-07-16"
    comments "MyString"
    text "MyString"
  end
end

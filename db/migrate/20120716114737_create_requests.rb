class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :requested_by
      t.date :requested_date
      t.string :team_sponsor
      t.string :request_type
      t.integer :proposed_version_number
      t.text :justification
      t.text :description
      t.text :sites
      t.string :timeline
      t.text :team
      t.string :commitment
      t.string :commitment_details
      t.text :superseded_docs
      t.string :training_impact
      t.string :training_strategy
      t.date :pqs_bmt_date
      t.text :pqs_bmt_decision_rationale
      t.date :pqs_ct_date
      t.text :pqs_ct_decision_rationale
      t.date :request_closed_date
      t.string :comments
      t.string :text

      t.timestamps
    end
  end
end

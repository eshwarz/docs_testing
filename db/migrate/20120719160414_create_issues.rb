class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :issue
      t.string :type
      t.text :comment

      t.timestamps
    end
  end
end

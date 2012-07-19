class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :type
      t.date :date
      t.text :comment

      t.timestamps
    end
  end
end

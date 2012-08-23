class AddGroupNumToTimeline < ActiveRecord::Migration
  def change
    add_column :timelines, :group_num, :string

  end
end

class RemoveTypeFromTimeline < ActiveRecord::Migration
  def up
    remove_column :timelines, :type
      end

  def down
    add_column :timelines, :type, :string
  end
end

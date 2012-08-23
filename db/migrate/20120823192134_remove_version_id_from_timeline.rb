class RemoveVersionIdFromTimeline < ActiveRecord::Migration
  def up
    remove_column :timelines, :version_id
      end

  def down
    add_column :timelines, :version_id, :integer
  end
end

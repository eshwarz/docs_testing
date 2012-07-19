class AddVersionIdToTimeline < ActiveRecord::Migration
  def change
    add_column :timelines, :version_id, :integer

  end
end

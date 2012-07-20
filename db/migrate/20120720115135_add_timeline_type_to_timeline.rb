class AddTimelineTypeToTimeline < ActiveRecord::Migration
  def change
    add_column :timelines, :timeline_type, :string

  end
end

class AddDocsIdToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :docs_id, :integer

  end
end

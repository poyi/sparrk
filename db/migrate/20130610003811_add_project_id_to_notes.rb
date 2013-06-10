class AddProjectIdToNotes < ActiveRecord::Migration
  def change
  	add_column :notes, :project_id, :integer
    add_index  :notes, :project_id
  end
end

class AddPublishedToProject < ActiveRecord::Migration
  def change
    add_column :projects, :publish, :boolean
  end
end

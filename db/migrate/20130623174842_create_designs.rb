class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :name
      t.binary :image
      t.integer :project_id

      t.timestamps
    end
  end
end

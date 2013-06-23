class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :name
      t.integer :project_id
      t.binary :image
      t.string :detail

      t.timestamps
    end
  end
end

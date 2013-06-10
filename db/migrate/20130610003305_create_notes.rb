class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :text
      t.string :link
      t.binary :image

      t.timestamps
    end
  end
end

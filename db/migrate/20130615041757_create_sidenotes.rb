class CreateSidenotes < ActiveRecord::Migration
  def change
    create_table :sidenotes do |t|
      t.string :content

      t.timestamps
    end
  end
end

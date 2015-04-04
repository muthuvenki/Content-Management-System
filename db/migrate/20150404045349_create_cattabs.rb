class CreateCattabs < ActiveRecord::Migration
  def change
    create_table :cattabs do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end

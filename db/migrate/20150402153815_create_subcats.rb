class CreateSubcats < ActiveRecord::Migration
  def change
    create_table :subcats do |t|
      t.string :name
      t.text :desc
      t.boolean :visible

      t.timestamps null: false
    end
  end
end

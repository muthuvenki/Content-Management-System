class SubcatCat < ActiveRecord::Migration
  def change
    add_column :subcats,:categories_id,:integer
  end
end

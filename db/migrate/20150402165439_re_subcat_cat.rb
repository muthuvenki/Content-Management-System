class ReSubcatCat < ActiveRecord::Migration
  def change
    remove_column :subcats,:categories_id
    add_column :subcats,:category_id,:integer
  end
end

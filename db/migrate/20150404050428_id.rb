class Id < ActiveRecord::Migration
  def change
    add_column :cattabs,:subcat_id,:integer
  end
end

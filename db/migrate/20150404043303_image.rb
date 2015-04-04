class Image < ActiveRecord::Migration
  def change
    add_column :subcats,:image,:string
  end
end

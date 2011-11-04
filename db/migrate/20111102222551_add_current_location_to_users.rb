class AddCurrentLocationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_lat, :decimal, :precision => 10, :scale => 8, :null => false
    add_column :users, :current_lng, :decimal, :precision => 10, :scale => 8, :null => false
  end
end

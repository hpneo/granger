class ChangeNullValuesToUsers < ActiveRecord::Migration
  def change
    change_column :users, :current_lat, :decimal, :precision => 10, :scale => 8, :null => true
    change_column :users, :current_lng, :decimal, :precision => 10, :scale => 8, :null => true
  end
end

class AddDefaultValuesToUsers < ActiveRecord::Migration
  def change
    change_column :users, :current_lat, :decimal, :precision => 10, :scale => 8, :default => 0.0
    change_column :users, :current_lng, :decimal, :precision => 10, :scale => 8, :default => 0.0
  end
end

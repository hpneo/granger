class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :user_id
      t.decimal :lat, :precision => 10, :scale => 8, :null => false
      t.decimal :lng, :precision => 10, :scale => 8, :null => false

      t.timestamps
    end
  end
end

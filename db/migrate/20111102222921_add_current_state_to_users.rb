class AddCurrentStateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_state, :string
  end
end

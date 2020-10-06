class AddUserIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_id, :string, null: false, default: ""
  end
end

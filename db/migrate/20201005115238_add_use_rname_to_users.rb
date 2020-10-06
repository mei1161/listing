class AddUseRnameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :use_rname, :string
  end
end

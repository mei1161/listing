class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|

      t.timestamps
      t.text :list_name
      t.text :list_comment
      t.references :user
    end
  end
end

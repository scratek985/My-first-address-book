class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :user_id
      t.integer :id
      t.string :group_name

      t.timestamps
    end
  end
end

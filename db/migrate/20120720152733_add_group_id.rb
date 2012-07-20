class AddGroupId < ActiveRecord::Migration
  def up
  add_column :addresses, :group_id, :integer
  end

  def down
  end
end

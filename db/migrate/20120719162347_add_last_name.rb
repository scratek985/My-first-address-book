class AddLastName < ActiveRecord::Migration
  def up
  add_column :addresses, :last_name, :string
  end

  def down
  end
end

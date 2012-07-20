class AddEmail < ActiveRecord::Migration
  def up
  add_column  :addresses, :emailadd, :string
  end

  def down
  end
end

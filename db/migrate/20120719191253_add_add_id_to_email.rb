class AddAddIdToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :address_id, :integer
  end
end

class AddEmailToEmail < ActiveRecord::Migration
  def change
  end
  add_column :emails, :location, :string
end

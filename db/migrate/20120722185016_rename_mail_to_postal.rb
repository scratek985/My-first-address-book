class RenameMailToPostal < ActiveRecord::Migration
  def up
  rename_table :mails, :postals
  end

  def down
  end
end

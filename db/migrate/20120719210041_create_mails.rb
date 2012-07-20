class CreateMails < ActiveRecord::Migration
  def change
    create_table :mails do |t|
      t.integer :address_id
      t.string :mail_place

      t.timestamps
    end
  end
end

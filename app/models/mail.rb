class Mail < ActiveRecord::Base
  attr_accessible :address_id, :mail_place
  belongs_to :address
end

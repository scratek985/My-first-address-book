class Address < ActiveRecord::Base
  attr_accessible :address, :name, :number, :last_name, :emailadd
  validates :name, presence: true;
  has_many :postals
  belongs_to :group
end

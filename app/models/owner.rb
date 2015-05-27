class Owner < ActiveRecord::Base
  has_and_belongs_to_many :campingsites

  validates_presence_of :name, :address, :phonenumber
end

class Owner < ActiveRecord::Base
  has_and_belongs_to_many :campingsites
end

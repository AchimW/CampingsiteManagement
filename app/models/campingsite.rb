class Campingsite < ActiveRecord::Base
  has_many :pitches
  has_and_belongs_to_many :owners
end

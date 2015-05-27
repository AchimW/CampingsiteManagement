class Pitch < ActiveRecord::Base
  belongs_to :campingsite

  validates_presence_of :number, :size, :features, :campingsite

  def setused
    self.used = true;
  end

  def unsetused
    self.used = false
  end
end

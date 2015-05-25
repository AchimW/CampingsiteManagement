class Pitch < ActiveRecord::Base
  belongs_to :campingsite

  def setused
    self.used = true;
  end

  def unsetused
    self.used = false
  end
end

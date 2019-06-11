class Failure < ActiveRecord::Base

  def to_s
    self.message
  end
end

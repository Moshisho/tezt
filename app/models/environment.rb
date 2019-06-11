class Environment < ActiveRecord::Base

  def to_s
    self.tags
  end
end

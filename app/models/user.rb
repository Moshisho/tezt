class User < ActiveRecord::Base
  belongs_to :team

  def to_s
    self.name
  end
end

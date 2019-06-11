class TeztRecord < ActiveRecord::Base
  has_many :tezt_run
  belongs_to :user
  belongs_to :team

  def to_s
    self.name
  end
end

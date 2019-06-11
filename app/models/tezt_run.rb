class TeztRun < ActiveRecord::Base
  belongs_to :tezt_record
  belongs_to :failure
  belongs_to :environment
end

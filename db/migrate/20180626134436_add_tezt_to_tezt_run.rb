class AddTeztToTeztRun < ActiveRecord::Migration
  def change
    add_reference :tezt_runs, :tezt_record, index: true
    add_foreign_key :tezt_runs, :tezt_records
  end
end

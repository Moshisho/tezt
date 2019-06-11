class CreateTeztRuns < ActiveRecord::Migration
  def change
    create_table :tezt_runs do |t|
      t.string :status
      t.references :failure, index: true, foreign_key: true
      t.references :environment, index: true, foreign_key: true
      t.integer :duration
      t.string :machine
      t.boolean :debug
      t.string :assets

      t.timestamps null: false
    end
  end
end

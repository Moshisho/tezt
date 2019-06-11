class CreateTeztRecords < ActiveRecord::Migration
  def change
    create_table :tezt_records do |t|
      t.string :name
      t.string :class_name
      t.string :tags
      t.boolean :active
      t.references :user, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.boolean :flaky
      t.integer :risk, limit: 3
      t.integer :avg_duration
      t.string :jira_test_id
      t.string :jira_bug_id

      t.timestamps null: false
    end
  end
end

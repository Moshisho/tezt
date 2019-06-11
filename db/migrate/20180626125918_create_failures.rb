class CreateFailures < ActiveRecord::Migration
  def change
    create_table :failures do |t|
      t.string :message
      t.text :stack_trace

      t.timestamps null: false
    end
  end
end

class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.string :tags
      t.string :digest
      t.boolean :active

      t.timestamps null: false
    end
  end
end

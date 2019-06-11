class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :notify_in_mail
      t.boolean :notify_in_sms
      t.boolean :notify_in_chat
      t.boolean :active
      t.string :chat_username
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

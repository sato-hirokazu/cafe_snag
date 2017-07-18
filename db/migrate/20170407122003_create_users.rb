class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "name"
      t.text "email"
      t.text "password_hash"
      t.text "password_salt"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps null: false
    end
  end
end

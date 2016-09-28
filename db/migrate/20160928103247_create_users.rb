class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      #  Account identity
      t.string :username, unique: true
      t.string :email, unique: true

      #  Security
      t.string :password_digest
      t.string :remember_digest

      #  Admin
      t.boolean :admin, default: false

      t.timestamps null: false
    end
  end
end

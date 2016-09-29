class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.integer :user_id
      t.integer :skill_id

      t.timestamps null: false
    end
    add_index :endorsements, :user_id
    add_index :endorsements, :skill_id
    add_index :endorsements, [:user_id, :skill_id], unique: true
  end
end

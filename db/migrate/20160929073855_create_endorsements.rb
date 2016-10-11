class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.integer :user_id
      t.integer :user_skill_id

      t.timestamps null: false
    end
    add_index :endorsements, :user_id
    add_index :endorsements, :user_skill_id
    add_index :endorsements, [:user_id, :user_skill_id], unique: true
  end
end

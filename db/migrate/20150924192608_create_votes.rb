class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :votable_id
      t.string :votable_type

      t.timestamps null: false
    end
  end
end

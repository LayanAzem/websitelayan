class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.integer :user_id
      t.string :title
      t.string :overview
      t.string :HelpNeeded

      t.timestamps null: false
    end
  end
end

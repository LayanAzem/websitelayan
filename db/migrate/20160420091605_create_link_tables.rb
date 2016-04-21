class CreateLinkTables < ActiveRecord::Migration
  def change
    create_table :link_tables do |t|
      t.integer :role_id
      t.string :name
      t.integer :idea_id
      t.integer :user_id
      t.integer :platform_id

      t.timestamps null: false
    end
  end
end

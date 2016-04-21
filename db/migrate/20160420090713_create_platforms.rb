class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :platformname
      t.integer :idea_id

      t.timestamps null: false
    end
  end
end
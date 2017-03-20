class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :firstname
      t.string :lastname
      t.integer :access_level
      t.string :contact
      t.integer :school_id

      t.timestamps null: false
    end
  end
end

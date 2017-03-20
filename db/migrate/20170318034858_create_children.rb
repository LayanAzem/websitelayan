class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :firstname
      t.string :lastname
      t.string :age
      t.string :number_of_guardians
      t.string :grade
      t.string :class_number
      t.integer :school_id

      t.timestamps null: false
    end
  end
end

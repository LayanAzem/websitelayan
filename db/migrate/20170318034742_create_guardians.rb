class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.string :firstname
      t.string :lastname
      t.string :occupation
      t.string :email
      t.string :contact
      t.string :number_of_children
      t.string :relationship_to_child
      t.string :preferredLanguage

      t.timestamps null: false
    end
  end
end

class AddCurrentStatusForChild < ActiveRecord::Migration
  def change
        add_column :children, :currentStatusOfChild, :string

  end
end

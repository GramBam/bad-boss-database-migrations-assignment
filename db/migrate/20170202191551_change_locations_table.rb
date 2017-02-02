class ChangeLocationsTable < ActiveRecord::Migration[5.0]

  def change
    reversible do |dir|
      dir.up do
      remove_column :locations, :name
      remove_column :locations, :address
      remove_column :locations, :current_employees

      add_column :locations, :city, :string
      add_column :locations, :weather, :decimal
  end


  dir.down do
    add_column :locations, :name
    add_column :locations, :address
    add_column :locations, :current_employees

    remove_column :locations, :city, :string
    remove_column :locations, :weather, :decimal
    end
  end
end





end

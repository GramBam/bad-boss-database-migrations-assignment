class RestoreLocationsTable < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
    dir.up do

      add_column :locations, :name, :string
      add_column :locations, :address, :string
      add_column :locations, :current_employees, :integer

      remove_column :locations, :city
      remove_column :locations, :weather
      end
    end
  end
end

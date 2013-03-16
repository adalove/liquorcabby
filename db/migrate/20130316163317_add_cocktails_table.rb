class AddCocktailsTable < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :description
      t.string :created_by
      t.timestamps
    end
  end
end

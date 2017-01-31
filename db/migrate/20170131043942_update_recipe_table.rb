class UpdateRecipeTable < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :ingredients, :text
    add_column :recipes, :directions, :text
    add_column :recipes, :difficulty, :string
    add_column :recipes, :meal, :string
    add_column :recipes, :serving_size, :integer
    add_column :recipes, :cuisine, :string
    add_column :recipes, :time_to_make, :integer
  end
end

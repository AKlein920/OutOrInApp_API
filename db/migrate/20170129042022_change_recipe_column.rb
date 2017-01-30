class ChangeRecipeColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :cuisine, :string
  end
end

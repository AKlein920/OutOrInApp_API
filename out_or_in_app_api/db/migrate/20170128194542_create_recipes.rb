class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :url
      t.string :img_url
      t.string :query

      t.timestamps
    end
  end
end

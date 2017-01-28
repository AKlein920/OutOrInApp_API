class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :url
      t.string :img_url
      t.string :location
      t.string :query

      t.timestamps
    end
  end
end

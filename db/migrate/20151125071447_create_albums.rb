class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :image_url
      t.date :release_date
      t.string :country

      t.timestamps null: false
    end
  end
end

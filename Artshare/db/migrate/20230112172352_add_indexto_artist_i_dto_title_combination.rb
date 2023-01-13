class AddIndextoArtistIDtoTitleCombination < ActiveRecord::Migration[7.0]
  def change
    add_index :artworks, [:artist_id, :title], unique: true
    add_index :artworks, :image_url, unique: true
  end
end

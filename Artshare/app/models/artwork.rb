# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :title, presence: true, uniqueness: {scope: :artist_id, message: "Only one artwork title per artist"}
    validates :image_url, presence: true, uniqueness: true

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User

    has_many :shares,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare,
        dependent: :destroy
    
    has_many :shared_viewers,
        through: :shares,
        source: :viewer

    def self.artworks_for_user_id(user_id)
        
        # # Rails 1 method
        # owned_artworks = Artwork.where(artist_id: user_id)
        # shared_artworks = Artwork.joins(:shares).where('artworks.id = artwork_shares.artwork_id AND artwork_shares.viewer_id = ?', user_id)

        owned_artworks = User.find(user_id).artworks
        shared_artworks = User.find(user_id).shared_artworks
        owned_artworks + shared_artworks
    end
    


end

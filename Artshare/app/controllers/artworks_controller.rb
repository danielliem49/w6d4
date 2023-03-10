class ArtworksController < ApplicationController
    def index
        @user_artworks = Artwork.artworks_for_user_id(params[:user_id])
        render json: @user_artworks
    end

    def create
        # debugger
        @artwork = Artwork.new(artwork_params)
        if @artwork.save
            # redirect_to artworks_url
            render json: @artwork
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    def show
        @artwork = Artwork.find_by(id: params[:id])
        # preferred over Artwork.find(params[:id]), because the above method returns an error message
        render json: @artwork
    end

    def update
        @artwork = Artwork.find(params[:id])
        if @artwork.update(artwork_params)
            redirect_to artwork_url(@artwork)
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy
        redirect_to artworks_url
    end

    private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end

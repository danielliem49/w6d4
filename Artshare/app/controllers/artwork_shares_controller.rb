class ArtworkSharesController < ApplicationController

    def create
        # debugger
        @artworkshare = ArtworkShare.new(artwork_share_params)
        if @artworkshare.save
            render json: @artworkshare
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    def destroy
        @artworkshare = ArtworkShare.find(params[:id])
        @artworkshare.destroy
        render json: @artworkshare
    end


    private
    def artwork_share_params
        params.require(:artwork_share).permit(:viewer_id, :artwork_id)
    end

end

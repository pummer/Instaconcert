class ImagesController < ApplicationController
  def index
    @images = Image.find(:all, :select => 'DISTINCT img_thumb_url', :order => 'img_time DESC').limit(48)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
      format.js
    end
  end

end

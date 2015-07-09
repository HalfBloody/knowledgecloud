class Api::WebsitesController < ApplicationController
  protect_from_forgery :except => :create 
  def create

    @website = Website.create(url: wp[:url], description: wp[:description], user_email: wp[:user_email])
    @tag_string = wp[:tags]
    @tags = @tag_string.split(",")
    @tags.each do |tag|
      @tag = Tag.find_or_create_by(name: tag)
      @website.tags << @tag
    end
    
    
    respond_to do |format|
      format.html { render json: @website.to_json }
      format.json { render json: @website.to_json }
    end
  end

  def wp
    params.permit!
  end
end

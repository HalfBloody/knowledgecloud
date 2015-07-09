class Api::WebsitesController < ApplicationController
  # protect_from_forgery :except => :create 
  def create
    @website = Website.create_with(description: wp[:description], user_email: wp[:user_email]).first_or_create(url: wp[:url])
    @tag_string = wp[:tags]
    @tags = @tag_string.split(",")
    @tags.each do |tag|
      Tag.first_or_create(name: tag)
      @website.tags << tag
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

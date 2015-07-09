class Api::WebsitesController < ApplicationController
  protect_from_forgery :except => :create 
  def create
    @website = Website.first_or_create(url: wp[:url], description: wp[:description], user_email: wp[:user_email])    
    @tag = Tag.first_or_create(name: wp[:name])
    @website.tags << @tag
    respond_to do |format|
      format.html { render json @website.to_json }
      format.json { render json @website.to_json }
    end
  end

  def wp
    params.permit!
  end
end

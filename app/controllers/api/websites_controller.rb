class Api::WebsitesController < ApplicationController
  protect_from_forgery :except => :create 
  def create
    @website = Website.update_or_create(url: wp[:url], description: wp[:description], user_email: wp[:user_email])    
    @tag = Tag.update_or_create(name: wp[:name])
    @website.tags << @tag
    respond_to do |format|
      format.html {}
      format.json {}
    end
  end

  def wp
    params.permit!
  end
end

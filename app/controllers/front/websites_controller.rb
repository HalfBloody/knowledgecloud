class Front::WebsitesController < ApplicationController
  def new
    @website = Website.new
    @tag = Tag.new
  end

  def create
  end
end

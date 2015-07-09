class Front::TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @websites = Website.find_by(@tag)
  end
end

class Front::TagsController < ApplicationController
  def index
    @tags = Tag.all.map { |tag| {text: tag.name, weight: tag.count_occurences, "link": front_tag_path(tag) } }
    

  end

  def show
    @tag = Tag.find(params[:id])
    @websites = @tag.websites
  end
end
class CategoryController < ApplicationController

  def show
    @category = Category.find(params[:id])
    set_page_options
  end

  attr_accessor :category

  def set_page_options
    set_meta_tags category.slice(:title, :keywords, :description)
    add_breadcrumb 'Home', :root_path, title: 'Home'
  end
end

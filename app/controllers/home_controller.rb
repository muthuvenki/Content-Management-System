class HomeController < ApplicationController
  respond_to :json,:html
  def index

  end
  def menu_category
    @menu=Menu.find(params[:id])
    @category=@menu.category
  end
  def cat_subcat
    @cat=Category.find(params[:id])
    @sub_cat=@cat.subcats
  end
  def subcat_tabs
    @sub_cat=Subcat.find(params[:id])
    @tabs=@sub_cat.cattab
  end
end

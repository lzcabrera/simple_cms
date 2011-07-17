class PagesController < ApplicationController
  
  def list
    @pages = Page.order("pages.position ASC")
  end
  
end

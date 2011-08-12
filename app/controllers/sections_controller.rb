class SectionsController < ApplicationController
  
  def index
    list
    render('list')
  end
  
  def list
    @sections = Section.order("sections.position ASC")
  end

  def show
    @section = Section.find(params[:id])
  end
  
  
  
  
  
end

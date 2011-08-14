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
  
  def create
    @section = Section.new(params[:section])
    if @section.save
      redirect_to(:action => 'list')
    else
      render('new')
    end
  end
  
  def edit
    @section = Section.find(params[:id])
  end
  
  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(params[:section])
      redirect_to(:action => 'show', :id => @section.id)
    else
      render('edit')
    end
  end
  
  def delete
    @section = Section.find(params[:id])
  end 
  
  def destroy
    Section.find(params[:id]).destroy
    redirect_to(:action => 'list')
  end
  
end

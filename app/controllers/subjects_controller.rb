class SubjectsController < ApplicationController
  
  def index
    list
    render('list')
  end 
  
  def list
    @subjects = Subject.order("subjects.position ASC")
  end  
  
  def show
    @subject = Subject.find(params[:id])
  end
  
end
 
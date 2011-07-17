class SectionsController < ApplicationController
  
  def list
    @sections = Section.order("sections.position ASC")
  end
  
end

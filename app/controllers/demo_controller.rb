class DemoController < ApplicationController
  
  layout 'admin'
  
  def index
    # render('hello')
    # redirect_to(:action => 'other_hello')
  end
  
  def hello
    redirect_to('http://www.funnelcity.com')
  end
  
  def other_hello
    render(:text => 'Hello Everyone')
  end
  
  def javascript
  end
  
  def text_helpers
  end
  
  def escape_output
  end

end

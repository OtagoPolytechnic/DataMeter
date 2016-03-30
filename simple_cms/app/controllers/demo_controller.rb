class DemoController < ApplicationController
  
  layout false

  def index
  	
  end

  def Hello
    #render('index')
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def google
  	redirect_to("http://www.google.com")
  end

end

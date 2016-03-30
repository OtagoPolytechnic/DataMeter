class DemoController < ApplicationController
  
  layout false



  def secondly_loop
    last = Time.now
    while true
        yield
        now = Time.now
        _next = [last + 1,now].max
        sleep (_next-now)
        last = _next
    end
end


  def index 
@campuslist = CampusList.all 
@meter = Meter.all
  	
  end

  


  def Managemeters
     
     @campuslist = CampusList.all 
  end

  def create
      @campuslistadd = CampusList.new(campuslist_params)

      if @campuslistadd.save
        redirect_to(:action => 'Managemeters')
      else
      render('Managemeters')
    end
  end

  def edit
     @campuslist = CampusList.find(params[:id])
  end

  def update
    @campuslist = CampusList.find(params[:id])

      if @campuslist.update_attributes(campuslist_Updateparams)
        redirect_to(:action => 'Managemeters')
      else
      render('edit')
    end
  end

  def delete
     @campuslist = CampusList.find(params[:id])
  end

  def destroy
    @campuslist = CampusList.find(params[:id])
    @campuslist.destroy
    redirect_to(:action => 'Managemeters')
  end

  

  def charts

  end

  def forms
    
  end

  def tables
    
  end

  def bootstrapelements
    
  end

  def bootstrapgrid
    
  end

  def Hello
   
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
  end

  private
  def campuslist_params
    params.require(:campuslistadd).permit(:Hostname, :Username, :RemotePath, :LocalPath, :Password, :DeviceLocation)
  

end

private
  def campuslist_Updateparams
    params.require(:campuslist).permit(:Hostname, :Username, :RemotePath, :LocalPath, :Password, :DeviceLocation)
  

end





end

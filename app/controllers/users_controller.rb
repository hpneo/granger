class UsersController < InheritedResources::Base
  custom_actions :collection => :near_by

  def near_by
    if params[:latlng]
      radius = params[:radius]? params[:radius] : 0.0621371192
      latlng = params[:latlng].split(',')
      latlng[0] = latlng[0].to_d
      latlng[1] = latlng[1].to_d
      @users = User.near(latlng, radius).where({:current_state => 'available'}).all
    else
      @users = []
    end
    respond_to{ |format|
      format.json{ render :json => @users }
      format.html
    }
  end
end
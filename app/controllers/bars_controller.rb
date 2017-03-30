class BarsController < ApplicationController
  def index
    # @bars = current_user.bars
    @bars = Bar.all
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new(bar_params)
    @bar.user = current_user
    if @bar.save
      redirect_to bars_path
    else
      render :new
    end
  end

  def show
    # if current_user.owns_bar?(Bar.find(params[:id]))
      @bar = Bar.find(params[:id])
      @bar_coordinates = { lat: @bar.latitude, lng: @bar.longitude }
      @bars = Bar.where.not(latitude: nil, longitude: nil)

      @hash = Gmaps4rails.build_markers(@bars) do |bar, marker|
      marker.lat bar.latitude
      marker.lng bar.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

    # else
    #   redirect_to bars_path
    #   flash[:notice] = "you cant acces this page"
    # end


  private

  def bar_params
    params.require(:bar).permit(:name, :location, :user_id)
  end
end




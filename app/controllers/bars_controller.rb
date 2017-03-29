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
    # else
    #   redirect_to bars_path
    #   flash[:notice] = "you cant acces this page"
    # end
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :location, :user_id)
  end
end




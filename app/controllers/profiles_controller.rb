class ProfilesController < ApplicationController
  def show
    # if current_user.owns_bar?(Bar.find(params[:id]))
      @profile = Profile.find(params[:id])
  end
  def new
    @profile = Profile.new
  end
  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to bars_path
    else
      render :new
    end
  end
  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile = Profile.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :last_name, :user_id, :birthday)
  end
end

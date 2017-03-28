class EventsController < ApplicationController
  before_action :set_bar, only: [:new, :create]
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = @bar.events.build(event_params)
    if @event.save
      redirect_to bar_path(@bar)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def event_params
    params.require(:cocktail).permit(:title, :date)
  end

  def set_bar
    @bar = Bar.find(params[:bar_id])
  end
end

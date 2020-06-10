class EventsController < ApplicationController
  # before_action :set_event, only: [:show, :update, :destroy]

  # GET /events
  def index
    render(json: { events: Event.all})
  end

  # GET /events/1
  def show
    @event = Event.find(params[:id])
    render(json: @event)
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def event_params
      params.require(:event).permit(:name, :description, :start_at, :end_at, :color, :all_day)
    end

    # # Only allow a trusted parameter "white list" through.
    # def event_params
    #   params.require(:event).permit(:name, :description, :start_at, :end_at, :color, :all_day)
    # end
end

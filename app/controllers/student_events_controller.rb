class StudentEventsController < ApplicationController
  before_action :set_event, only: %i[ show new signup ]
    # GET /events or /events.json
    def index
      @student_events = Event.all
    end

    def show
    end

    def signup
    end


    def new
      @student_event = StudentEvent.new
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:event_name, :event_point, :event_location, :event_date, :event_start, :event_end, :event_verification, :event_attendee_list_id)
    end
end
  
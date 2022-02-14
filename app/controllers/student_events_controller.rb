class StudentEventsController < ApplicationController
  
    # GET /events or /events.json
    def index
      @events = Event.all
    end
  end
  
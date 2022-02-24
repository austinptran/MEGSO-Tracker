class StudentPointsController < ApplicationController
    before_action :set_point, only: %i[ show edit update ]
  
    # GET /points or /points.json
    def index
      @student_points = Student.all
      @student_rewards = Point.all
    end
  
    # GET /points/1 or /points/1.json
    def show
    end
  
    # GET /points/new
    def new
      @point = Student.new
    end
  
    # GET /points/1/edit
    def edit
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_point
        @point = Student.find(params[:UIN])
      end
  
      # Only allow a list of trusted parameters through.
      def point_params
        params.require(:point).permit(:point_count, :reward)
      end
  end
  
class SignUpsController < ApplicationController
    def new
        @sign_up = SignUp.new
        @campers = Camper.all 
        @activities = Activity.all 
    end

    def create
        sign_up_params = params.require(:sign_up).permit(:time, :camper_id, :activity_id)
        SignUp.create(sign_up_params)
        camper = Camper.find(params[:sign_up][:camper_id])
        redirect_to camper_path(camper)
    end
end

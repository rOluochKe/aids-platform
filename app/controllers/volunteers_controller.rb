class VolunteersController < ApplicationController
  def index
    @volunteers = Volunteer.order('request_due_date ASC')
    render json: @volunteers
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      render json: @volunteer
    else
      render json: @volunteer.errors, status: :unprocessable_entity
    end
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:request_type, :description, :location, :latitude, :longitude, :status,
                                      :request_due_date)
  end
end

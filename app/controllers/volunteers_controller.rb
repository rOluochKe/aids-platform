class VolunteersController < ApplicationController
  def index
    @volunteers = Volunteer.order('request_due_date ASC')
    render json: @volunteers
  end

  def create
    @volunteer = current_user.Volunteer.new(volunteer_params)
    if @volunteer.save
      render json: @volunteer
    else
      render json: @volunteer.errors, status: :unprocessable_entity
    end
  end

  def update
    @volunteer = current_user.volunteers.find(params[:id])
    if @volunteer.update(volunteer_params)
      render json: @volunteer
    else
      render json: @volunteer.errors, status: :unprocessable_entity
    end
  end

  def show
    @volunteer = Volunteer.find(params[:id])
    render json: @volunteer.as_json(except: :user_id,
                                    include: { user: { only: %i[first_name last_name
                                                                image] } }).merge(currentUserCanEdit: @volunteer.user.email == request.headers['uid'])
  end

  def destroy
    @volunteer = Volunteer.find(params[:id])
    if @volunteer.destroy
      head :no_content, status: :ok
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

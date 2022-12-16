class AirportsController < ApplicationController
  before_action :find_airport, only: [:show, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :render_error_message_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_error_invalid

  def index
    airports = Airport.all
    render json: airports
  end

  def show
    render json: @airport
  end
  
  def create
    new_airport = Airport.create!(airport_params)
    render json: new_airport, status: :created
  end
  
  def update
    @airport.update!(airport_params)
    render json: @airport, status: :accepted
  end

  def destroy
    # airport = Airport.find(params[:airport])
    @airport.destroy
    render json: "BOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOM!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  end

  private
  
  def render_error_message_not_found
    render json: { error: "Didn't find that airport, try looking internationally" }, status: :not_found
  end
  
  def render_error_invalid(error)
    render json: { errors: error.record.errors.full_messages }, status: :unprocessable_entity
  end
  
  def airport_params
    params.permit(:name, :abbrv, :international, :plane_capacity)
  end
  
  def find_airport
    @airport = Airport.find(params[:id])
  end

end

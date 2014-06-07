class Counselor::SessionsController < ApplicationController
  include ApplicationHelper

  def index
    #moved out to helper as methods
  end


  def new
    @new_sesh = Session.new()
  end


  def create
    puts 'WE ARE CREATING!'
    p params
    # @new_sesh = Session.new(new_sesh_params)
    # if @new_sesh.save
    #   redirect_to :index
    # else
    #   render :new
    # end
  end

  def show
    @selected_date = params[:id]
    @todays_sessions = Session.where(date: @selected_date)
  end


  private

  def new_sesh_params
    params.require(:sessions).permit(:date, :start_time, :end_time, :available)
  end
end

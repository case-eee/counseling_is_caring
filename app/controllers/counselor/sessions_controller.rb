class Counselor::SessionsController < ApplicationController
  include ApplicationHelper

  def index
    #moved out to helper as methods
  end


  def new
    @new_sesh = Session.new()
  end


  def create
    create_sessions(params[:session][:date])

    @day.each do |sesh|
      current_user.sessions << sesh
    end
    
    redirect_to counselor_sessions_path
  end

  def show
    @selected_date = params[:id]
    @todays_sessions = Session.where(date: @selected_date)
  end


end

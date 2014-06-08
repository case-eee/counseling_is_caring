class Counselor::SessionsController < ApplicationController
  include CounselorHelper

  def index
    #moved out to helper as methods
  end


  def new
    @new_sesh = Session.new()
  end


  def create
    create_sessions(params[:session][:date])

    @day.each do |session|
      current_user.sessions << session
    end

    redirect_to counselor_sessions_path
  end

  def show
    @url_date = params[:id]
    @todays_sessions = day_sessions(@url_date)
  end


end

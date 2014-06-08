class Counselor::SessionsController < ApplicationController
  include CounselorHelper
  include ApplicationHelper

  def index
    #moved out to helper as methods
  end


  def new
    @new_sesh = Session.new()
  end


  def create
    create_sessions(params[:session][:date])

    redirect_to counselor_sessions_path
  end

  def show
    @url_date = params[:id]
    @todays_sessions = day_sessions(@url_date)
  end


end

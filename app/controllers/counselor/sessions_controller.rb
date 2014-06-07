class Counselor::SessionsController < ApplicationController
  include ApplicationHelper

  def index
    #moved out to helper as methods
  end

  def new
    # Does this need to exist?
  end

  def show
    @selected_date = params[:id]
    @todays_sessions = Session.where(date: @selected_date)
  end

end

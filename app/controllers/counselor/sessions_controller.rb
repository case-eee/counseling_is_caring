class Counselor::SessionsController < ApplicationController

  def index
    # @counselor = current_user
    @todays_date = Date.today
    #@after_today = logic for later than @todays_date
    @todays_sessions = Session.where(date: @todays_date)

    @future_dates = Session.where("date >= ?", @todays_date).distinct.pluck(:date)
    # @future_dates
    @future_dates.map! do |date| date.to_s end
    p @future_dates

    # @future_dates.map! do |date|

    # @future_sessions = Session.where("date >= ?", @todays_date).distinct.pluck(:date)

  end

  def new
    # Does this need to exist?
  end

  def show
    @selected_date = params[:id]
    @todays_sessions = Session.where(date: @selected_date)
  end

end

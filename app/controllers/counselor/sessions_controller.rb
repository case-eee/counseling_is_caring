class Counselor::SessionsController < ApplicationController

  def index
    # @counselor = current_user
    todays_date = Date.today.to_s
    @todays_sessions = Session.where(date: todays_date)

  end



end

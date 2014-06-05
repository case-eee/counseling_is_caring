class AppointmentsController < ApplicationController
  def index
    #@student = current_user
    @student = User.find(1) # we will have sessions & will use current_user helper method in real life
    @appointments = @student.appointments
  end



end

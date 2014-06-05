class AppointmentsController < ApplicationController
  def index
    #@student = current_user
    @student = User.find(1) # we will have sessions & will use current_user helper method in real life
    @appointments = @student.appointments
  end

  def view_all_sessions
    @all_sessions = Session.all
  end

  def create
    #@current_student = User.find(session[:user_id])
    #current_user.appointments << Appointment.create(appointment_params)
    new_appointment = Appointment.create(appointment_params)
    user = User.find(1)
    user.appointments << new_appointment
    Session.find(new_appointment.session_id).update_attributes(available: false)

    render 'index'
  end

  private

  def appointment_params
    params.require(:appointment).permit(:session_id)
  end

end

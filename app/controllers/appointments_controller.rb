class AppointmentsController < ApplicationController
  def index
    @user
    @appointments = @user.appointments
  end

  def view_all_sessions
    @all_sessions = Session.all
  end

  def create
    @user
    @new_appointment = Appointment.create(appointment_params)
    close_session(@new_appointment)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:session_id)
  end
end
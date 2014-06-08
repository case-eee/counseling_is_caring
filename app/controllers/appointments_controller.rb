class AppointmentsController < ApplicationController
  include AppointmentHelper
  include ApplicationHelper


  def index

  end

  def view_all_sessions
    @all_sessions = Session.order(:date, :start_time)
    Session
  end

  def create
    @new_appointment = Appointment.create(appointment_params)
    current_user.appointments << @new_appointment
    close_session(@new_appointment)
    @appointments = current_user.appointments

    redirect_to appointments_path
  end

  def past_appointments

  end

  def destroy
    @appointment = Appointment.find(params[:id])
    open_session(@appointment)
    @appointment.destroy

    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:session_id)
  end
end

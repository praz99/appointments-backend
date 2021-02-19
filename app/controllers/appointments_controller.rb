class AppointmentsController < ApplicationController
  def create
    @appointment = @current_user.appointments.create!(appointment_params)
    json_response(@appointment, :created)
  end

  def destroy
    appointment = Appointment.find_by(id: params[:id], user: @current_user, house_id: params[:house_id])
    appointment.destroy
    head :no_content
  end

  private

  def appointment_params
    params.permit(:house_id, :date)
  end
end

class AppointmentsController < ApplicationController
  def create
    new_appointment = Appointment.user_new_appointment(@current_user, params[:house_id], params[:date])

    if new_appointment.save
      json_response(new_appointment, :created)
   else
      json_response(new_appointment.errors, :unprocessable_entity)
   end
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

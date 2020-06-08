class PatientsController < ApplicationController
  def index
    @patients = []
    hospital = Hospital.find(params[:id])
    hospital.doctors.each do |doc|
      doc.patients.each do |patient|
        @patients << patient
      end
    end
  end

  def edit
    patient = Patient.find(params[:id])
    patient.update(waiting?: true)
    redirect_to(request.env['HTTP_REFERER'])
  end
end

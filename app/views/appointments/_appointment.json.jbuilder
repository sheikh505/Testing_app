json.extract! appointment, :id, :patient_id, :Phycision_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)

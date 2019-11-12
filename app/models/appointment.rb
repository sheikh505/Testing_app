class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :phycision
end

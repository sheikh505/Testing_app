class Patient < ApplicationRecord

  has_many :appointments
  has_many :phycisions ,through: :appointments

end

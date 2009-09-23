class Patient < ActiveRecord::Base
  has_many :patient_encounters
  has_many :institutions, :through => :patient_encounters
  has_many :providers, :through => :patient_encounters
end

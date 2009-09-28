class EncounterReason < ActiveRecord::Base
  has_many :patient_encounters
  
end

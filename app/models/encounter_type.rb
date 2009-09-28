class EncounterType < ActiveRecord::Base
  has_many :patient_encounters
  
end

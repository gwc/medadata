class PatientEncounter < ActiveRecord::Base
  belongs_to :patient
  belongs_to :institution
  belongs_to :provider
  belongs_to :encounter_reason
  belongs_to :encounter_type
end

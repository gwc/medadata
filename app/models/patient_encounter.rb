class PatientEncounter < ActiveRecord::Base
  belongs_to :patient
  belongs_to :institution
  belongs_to :provider
end

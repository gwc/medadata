class Institution < ActiveRecord::Base
  has_many :patient_encounters
  has_many :patients, :through => :patient_encounters
  has_many :providers, :through => :patient_encounters
end

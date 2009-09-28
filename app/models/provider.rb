class Provider < ActiveRecord::Base
  has_many :patient_encounters
  has_many :institutions, :through => :patient_encounters
  has_many :patients, :through => :patient_encounters
  has_and_belongs_to_many :roles 
end

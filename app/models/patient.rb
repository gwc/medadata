require 'date'
class Patient < ActiveRecord::Base
  has_many :patient_encounters
  has_many :institutions, :through => :patient_encounters
  has_many :providers, :through => :patient_encounters
  has_one :user
  attr_accessor :age
  
  def age
    @age
  end
  def age=(dob)
    @age = DateTime.now - dob
  
  end
end

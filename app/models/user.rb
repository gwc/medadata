class User < ActiveRecord::Base
  acts_as_authentic
  belongs_to :patient
  belongs_to :provider
end

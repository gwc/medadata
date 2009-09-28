# db/seeds.rb

EncounterReason.create(:description => 'Initial Visit')
EncounterReason.create(:description => 'Follow Up')
EncounterReason.create(:description => 'Public Health Requirement')

EncounterType.create(:description => 'Clinic Visit')
EncounterType.create(:description => 'Home Visit')
EncounterType.create(:description => 'Hospital Visit')

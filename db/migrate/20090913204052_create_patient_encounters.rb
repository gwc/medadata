class CreatePatientEncounters < ActiveRecord::Migration
  def self.up
    create_table :patient_encounters do |t|
      t.datetime :start_date
      t.integer :patient_id
      t.integer :provider_id
      t.integer :institution_id
      t.text :notes
      t.integer :encounter_type_id
      t.integer :encounter_reason_id
      t.timestamps
    end
  end

  def self.down
    drop_table :patient_encounters
  end
end

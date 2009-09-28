class CreateEncounterReasons < ActiveRecord::Migration
  def self.up
    create_table :encounter_reasons do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :encounter_reasons
  end
end

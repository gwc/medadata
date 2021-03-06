class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :last_name
      t.string :first_name
      t.datetime :dob

      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end

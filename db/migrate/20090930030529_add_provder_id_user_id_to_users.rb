class AddProvderIdUserIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :provider_id, :int
    add_column :users, :patient_id, :int
  end

  def self.down
    remove_column :users, :patient_id
    remove_column :users, :provider_id
  end
end

class CreateProviderRoles < ActiveRecord::Migration
  def self.up
    create_table :provider_roles do |t|
      t.int :role_id
      t.int :provider_id

      t.timestamps
    end
  end

  def self.down
    drop_table :provider_roles
  end
end

class CreateProviderRoles < ActiveRecord::Migration
  def self.up
    create_table :provider_roles do |t|
      

      t.timestamps
    end
  end

  def self.down
    drop_table :provider_roles
  end
end

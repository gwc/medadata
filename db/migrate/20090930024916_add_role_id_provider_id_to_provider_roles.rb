class AddRoleIdProviderIdToProviderRoles < ActiveRecord::Migration
  def self.up
    add_column :provider_roles, :role_id, :int
    add_column :provider_roles, :provider_id, :int
  end

  def self.down
    remove_column :provider_roles, :provider_id
    remove_column :provider_roles, :role_id
  end
end

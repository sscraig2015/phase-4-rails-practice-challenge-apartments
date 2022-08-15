class UpdateNameColumnInTenants < ActiveRecord::Migration[6.1]
  def change
    change_column :tenants, :name, :string
  end
end

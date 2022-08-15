class CreateTenants < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants do |t|
      t.integer :name
      t.integer :age

      t.timestamps
    end
  end
end

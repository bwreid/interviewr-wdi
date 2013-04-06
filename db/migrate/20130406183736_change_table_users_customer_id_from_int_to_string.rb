class ChangeTableUsersCustomerIdFromIntToString < ActiveRecord::Migration
  change_column :users, :customer_id, :string
end

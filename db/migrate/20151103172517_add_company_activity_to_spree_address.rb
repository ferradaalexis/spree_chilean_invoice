class AddCompanyActivityToSpreeAddress < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :company_activity, :string
  end
end

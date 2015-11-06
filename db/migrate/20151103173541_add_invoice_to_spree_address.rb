class AddInvoiceToSpreeAddress < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :invoice, :boolean, default: false
  end
end

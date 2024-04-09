class AddStatusToTransaction < ActiveRecord::Migration[7.1]
  def change
    add_column :transactions, :status, :string
  end
end

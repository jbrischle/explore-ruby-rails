class AddStatusToAccount < ActiveRecord::Migration[7.1]
  def change
    add_column :accounts, :status, :string
  end
end

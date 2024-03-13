class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :title
      t.string :bankName
      t.string :iban

      t.timestamps
    end
  end
end

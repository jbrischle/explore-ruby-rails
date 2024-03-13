class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :amount
      t.string :sourceIban
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end

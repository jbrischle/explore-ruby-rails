class Account < ApplicationRecord
  has_many :transactions

  validates :title, presence: true
  validates :bankName, presence: true
  validates :iban, presence: true
end

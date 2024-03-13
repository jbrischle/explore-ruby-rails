class Account < ApplicationRecord
  validates :title, presence: true
  validates :bankName, presence: true
  validates :iban, presence: true
end

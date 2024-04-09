class Account < ApplicationRecord
  has_many :transactions

  validates :title, presence: true
  validates :bankName, presence: true
  validates :iban, presence: true

  VALID_STATUSES = %w[closed open review]

  validates :status, inclusion: { in: VALID_STATUSES }

  def closed?
    status == 'closed'
  end
end

class Transaction < ApplicationRecord
  belongs_to :account

  VALID_STATUSES = %w[pending review canceled settled]

  validates :status, inclusion: { in: VALID_STATUSES }

  def canceled?
    status == 'canceled'
  end
end

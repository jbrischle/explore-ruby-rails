class Account < ApplicationRecord
  include Visible

  extend ActiveSupport::Concern

  has_many :transactions

  validates :title, presence: true
  validates :bankName, presence: true
  validates :iban, presence: true

end

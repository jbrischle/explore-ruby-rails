class Transaction < ApplicationRecord
  include Visible

  extend ActiveSupport::Concern

  belongs_to :account

end

module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['open', 'closed', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def open_count
      where(status: 'open').count
    end

    def closed_count
      where(status: 'closed').count
    end

    def archived_count
      where(status: 'archived').count
    end
  end

  def archived?
    status == 'archived'
  end
end

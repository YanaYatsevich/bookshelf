class Comment < ApplicationRecord
  include Visible

  belongs_to :book

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }
end

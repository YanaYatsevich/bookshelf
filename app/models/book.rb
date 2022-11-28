class Book < ApplicationRecord
  include Visible

  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  VALID_STATUSES = ['ongoing', 'completed', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  mount_uploader :picture, PictureUploader
end

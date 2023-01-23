class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true


  before_validation :normalize_name

  private

  def normalize_name
    self.name = name.downcase.titleize
  end

end

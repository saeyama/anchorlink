class Purpose < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :classification, presence: true

  mount_uploader :image, ImageUploader

  # belongs_to :user
  has_many :scores
  has_many :tasks
  has_many :participants
  
end

class Purpose < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :classification, presence: true

  mount_uploader :image, ImageUploader

  belongs_to :user

  has_many :tasks
  accepts_nested_attributes_for :tasks, allow_destroy: true
  
  has_many :scores
  has_many :participants
  has_many :participant_users, through: :participants, source: 'user'

  def participanted_by?(user)
    participants.where(user_id: user.id).exists?
  end
  
end

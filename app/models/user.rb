class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :purposes, dependent: :destroy 
  has_many :participants, dependent: :destroy 
  has_many :participant_purposes, through: :participants, source: :purpose

  has_many :scores
end

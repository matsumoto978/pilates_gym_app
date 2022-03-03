class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  validates :content, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :ward_id, presence: true

  mount_uploader :img, ImageUploader

  DEFALULATE = 0.0

  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ward
end

class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  validates :content, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :ward, exclusion: { in: %w[---], message: "を選択してください"}

  mount_uploader :img, ImageUploader
  
  DEFALULATE = 0.0

  enum ward: {
    "---": 0,
    千代田区: 1, 中央区: 2, 港区: 3, 新宿区: 4, 文京区: 5, 台東区: 6, 墨田区: 7, 江東区: 8, 品川区: 9, 目黒区: 10,
    大田区: 11, 世田谷区: 12, 渋谷区: 13, 中野区: 14, 杉並区: 15, 豊島区: 16, 北区: 17, 荒川区: 18, 板橋区: 19, 
    練馬区: 20, 足立区: 21, 葛飾区: 22, 江戸川区: 23,
  }

  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end
end

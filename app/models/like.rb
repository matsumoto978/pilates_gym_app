class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post, counter_cache: :likes_count
  
  validate :my_post_cannot_like
  validates :user_id, uniqueness: {
    scope: :post_id,
    message: "は同じ投稿に2回以上いいねはできません"
  }

  private

  def my_post_cannot_like
    errors.add(:base, "自分の投稿にいいねはできません") if user_id == post.user_id
  end
end

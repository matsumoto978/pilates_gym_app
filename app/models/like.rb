class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  validate :my_post_cannot_like

  private

  def my_post_cannot_like
    errors.add(:base, "自分の投稿にいいねはできません") if user_id == post.user_id
  end
end

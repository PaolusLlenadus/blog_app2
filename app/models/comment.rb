class Comment < ActiveRecord::Base
  validates :post_id, :user_id, :body, presence: true
end

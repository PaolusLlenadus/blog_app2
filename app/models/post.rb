class Post < ActiveRecord::Base
  validates :title, presence: true

  scope :bodies, -> { where(body: "body") }

  belongs_to :user
end

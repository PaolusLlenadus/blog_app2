class Post < ActiveRecord::Base
  validates :title, presence: true

  scope :bodies, -> { where(body: "body") }

  has_many :comments, dependent: :destroy
  belongs_to :user
end

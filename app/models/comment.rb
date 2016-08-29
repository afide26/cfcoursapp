class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :body, presence: true, length: {minimum: 10}
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, :numericality => {only_integer:true, :greater_than => 0}
  after_create_commit { CommentUpdateJob.perform_later(self) }
end

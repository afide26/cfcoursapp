class Product < ActiveRecord::Base
  has_many :orders
  has_many :comments
  validates :name, presence:true

  def avg_rating
    comments.average(:rating).to_f
  end
end

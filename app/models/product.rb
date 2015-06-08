class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates :title, presence: true
  validates :description, presence: true
  VALID_PRICE_FORMAT = /\A\d+(?:\.\d{0,2})?\z/
  validates :price, presence: true, numericality: true, format: { with: VALID_PRICE_FORMAT }

  def average_rating
    if self.reviews.any?
      # create array of reviews rating
      ratings = Array.new
      self.reviews.each do |review|
        ratings << review[:rating]
      end
      # count the average
      ratings.inject { |sum, el| sum + el}.to_f / ratings.size
    end
  end
end

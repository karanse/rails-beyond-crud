class Restaurant < ApplicationRecord
  has_many :reviews
  # @restaurant.reviews
  # => [<Review>, <Review> ]
end

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, length: { minimum: 5 }, presence: true
  # @review.restaurant association allows this
  # => <Restaurant 0x0454 @name...>
end

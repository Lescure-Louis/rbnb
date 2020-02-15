class Costume < ApplicationRecord
  SIZE = %w(XS S M L XL)

  belongs_to :user
  validates :name, presence: true
  validates :price, presence: true
  validates :size, presence: true, inclusion: { in: SIZE }

end

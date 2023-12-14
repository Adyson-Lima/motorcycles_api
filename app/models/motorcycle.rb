class Motorcycle < ApplicationRecord
  validates :name, :category, presence: true
end

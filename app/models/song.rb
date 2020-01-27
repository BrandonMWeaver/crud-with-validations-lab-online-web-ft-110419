class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates
end

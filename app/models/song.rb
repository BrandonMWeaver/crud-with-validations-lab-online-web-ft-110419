class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :released, inclusion: [true, false]
  with_options if:
  validates :artist_name, presence: true
end

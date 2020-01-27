class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :released, inclusion: [true, false]
  with_options if: released?
  validates :artist_name, presence: true
  
  def released?
    return released
  end
  
end

class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
end

# NAMES = ["Drama", "All Time Favorites", "Girls Power"]
# inclusion: { in: LISTS }

class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :list_id, presence: true
  validates :movie_id, presence: true, uniqueness: {scope: :list_id, message:"this movie is already in the list"}
  validates :comment, presence: true, length: {minimum: 6}
end

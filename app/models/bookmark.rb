class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

#  validates :comment, length: { minimum: 4 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "est déjà dans la liste" }
end

class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: 'Le bookmark est déjà lié à ce film dans cette liste.' }
  validates :comment, length: { minimum: 6, message: 'Le commentaire doit avoir au moins 6 caractères.' }
end

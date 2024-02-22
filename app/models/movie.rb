class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true



  # before_destroy :check_for_bookmarks

  # private

  # def check_for_bookmarks
  #   if bookmarks.any?
  #     errors.add(:base, "Vous ne pouvez pas supprimer un film s'il est indiqué en référence dans au moins un bookmark.")
  #     throw :abort
  #   end
  # end
end

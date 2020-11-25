class Suggestion < ApplicationRecord

  has_many :comments, foreign_key: :suggestion_id

  validates :title, presence: true
  validates :suggestion, presence: true

end

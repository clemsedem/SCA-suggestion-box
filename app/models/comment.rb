class Comment < ApplicationRecord
  belongs_to :suggestion, foreign_key: :suggestion_id
end

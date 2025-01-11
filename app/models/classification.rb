class Classification < ApplicationRecord
  belongs_to :movie
  belongs_to :rating

  validates_uniqueness_of :movie_id, scope: :rating_id
end

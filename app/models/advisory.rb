class Advisory < ApplicationRecord
  belongs_to :movie
  belongs_to :reason

  validates_uniqueness_of :movie_id, scope: :reason_id
end

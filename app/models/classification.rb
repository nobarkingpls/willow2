class Classification < ApplicationRecord
  belongs_to :movie
  belongs_to :rating

  validates_uniqueness_of :movie_id, scope: :rating_id

  def rating_code
    rating && rating.code
  end

  def rating_code=(code)
    self.rating = Rating.find_or_create_by(code: code) unless code.blank?
  end
end

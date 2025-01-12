class Right < ApplicationRecord
  belongs_to :movie
  belongs_to :country

  validates_uniqueness_of :movie_id, scope: :country_id
  validates :country_id, :start, :finish, presence: true

  def country_code
    country && country.code
  end

  def country_code=(code)
    self.country = Country.find_or_create_by(code: code) unless code.blank?
  end
end

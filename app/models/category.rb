class Category < ApplicationRecord
  belongs_to :movie
  belongs_to :genre

  def genre_name
    genre && genre.name
  end

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name) unless name.blank?
  end
end

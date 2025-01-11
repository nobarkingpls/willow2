# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# codes = [ 'CA', 'US', 'AU', 'NZ', 'GB', 'IE' ]

# codes.each do |code|
#   Country.create(code: code)
# end

# genres = [ 'action', 'adventure', 'animation', 'anime', 'biography', 'bollywood', 'classics', 'comedy', 'crime', 'documentary', 'drama', 'educational', 'fantasy', 'game_show', 'history', 'holiday', 'horror', 'independent', 'kids_and_family', 'lgbt', 'music', 'musical', 'mystery', 'news', 'novelas', 'reality', 'romance', 'sci_fi', 'short_films', 'special_interest', 'sports', 'talk_show', 'teens', 'thriller', 'travel', 'war', 'western' ]

# genres.each do |name|
#   Genre.create(name: name)
# end

# ratings = [ 'G', 'PG', '14', '18' ]

# ratings.each do |code|
#   Rating.create(code: code)
# end

reasons = [ 'LC', 'MT', 'N', 'V', 'SR', 'SS' ]

reasons.each do |code|
  Reason.create(code: code)
end

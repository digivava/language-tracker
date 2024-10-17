# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

["Arabic", "Amharic", "Cantonese", "Dutch", "French", "German", "Japanese", "Korean", "Mandarin", "Norwegian", "Persian", "Russian", "Spanish", "Vietnamese"].each do |language_name|
    Language.find_or_create_by!(name: language_name)
end

# TODO: create one User as seed, we'll just use that for now until we implement the ability to create/login as a User
User.find_or_create_by(username: "test_user")

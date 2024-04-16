# rubocop:disable Rails/Output
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
if Company.blank?
  company = Company.create!(name: 'kpmg')
  puts "Created company: #{company.name}"
  u = User.create!(email: 'accountant@kpmg.com', password: 'password', company:)
  puts "Created user: #{u.email}"
  u = User.create!(email: 'manager@kpmg.com', password: 'password', company: kpmg)
  puts "Created user: #{u.email}"
  company = Company.create!(name: 'pwc')
  puts "Created company: #{company.name}"
  u = User.create!(email: 'eavesdropper@pwc.com', password: 'password', company:)
  puts "Created user: #{u.email}"
end

# rubocop:enable Rails/Output

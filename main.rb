# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

pp @candidates


puts "experienced candidates:"
puts experienced?(@candidates[0])

puts "\ncandidate with ID 10:"
candidate = find(10)
puts candidate ? candidate : "Candidate not found"

puts "\nQualified candidates:"
qualified = qualified_candidates(@candidates)
qualified.each { |c| puts "ID: #{c[:id]}, Experience: #{c[:years_of_experience]}, Github Points: #{c[:github_points]}" }

puts "\nCandidates ordered by qualifications:"
ordered = ordered_by_qualifications(@candidates)
ordered.each { |c| puts "ID: #{c[:id]}, Experience: #{c[:years_of_experience]}, Github Points: #{c[:github_points]}" }
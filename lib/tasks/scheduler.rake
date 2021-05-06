task fetch_avid_climbers: :environment do
  puts 'Fetching Avid Climbers'
  AvidScraper.new.go
  puts 'done.'
end

task fetch_the_gym_gymers: :environment do
  puts 'Fetching The Gym Gymers'
  TheGymScraper.go
  puts 'done.'
end

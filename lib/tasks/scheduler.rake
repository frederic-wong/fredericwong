task fetch_avid_climbers: :environment do
  puts 'Fetching Avid Climbers'
  AvidScraper.go
  puts 'done.'
end

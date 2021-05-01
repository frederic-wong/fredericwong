task fetch_avid_climbers: :environment do
  puts 'Fetching Avid Climbers'
  AvidScraper.new.go
  puts 'done.'
end

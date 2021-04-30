require 'httparty'

class AvidScraper
  def self.go
    url = "https://portal.rockgympro.com/portal/public/c517f311383a69209b2d00e4698bf8e7/occupancy?&iframeid=occupancyCounter&fId="
    html = HTTParty.get(url)
    count = html.match(/'count' : (\d+)/)[1].to_i

    ClimberCount.create(climber: count)
  end
end

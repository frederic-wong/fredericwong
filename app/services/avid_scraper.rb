require 'httparty'

class AvidScraper
  def initialize
    @weekend_open = (Time.parse '10:00')
    @weekend_close = (Time.parse '18:00')

    @weekday_open = (Time.parse '12:00')
    @weekday_close = (Time.parse '21:30')

    @time = Time.now
  end

  def go
    if during_weekend_opening || during_weekday_opening
      url = 'https://portal.rockgympro.com/portal/public/c517f311383a69209b2d00e4698bf8e7/occupancy?&iframeid=occupancyCounter&fId='
      html = HTTParty.get(url)
      count = html.match(/'count' : (\d+)/)[1].to_i

      ClimberCount.create(climber: count)
    end
  end

  def during_weekend_opening
    if @time.saturday? || @time.sunday?
      if (@time >= @weekend_open) && (@time <= @weekend_close)
        true
      else
        false
      end
    else
      false
    end
  end

  def during_weekday_opening
    if @time.saturday? || @time.sunday?
      false
    elsif (@time >= @weekday_open) && (@time <= @weekday_close)
      true
    else
      false
    end
  end
end

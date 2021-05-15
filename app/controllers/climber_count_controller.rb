# frozen_string_literal: true

class ClimberCountController < ApplicationController
  def index
    @graph_data = [{ name: 'Climbers', data: ClimberCount.where(created_at: 7.days.ago..Date.today).pluck(:created_at, :climber) }]
    @current_climber_count = ClimberCount.last
    @color = define_color(@current_climber_count.climber)
  end

  def define_color(count)
    if count < 20
      'green'
    elsif count >= 20 && count < 40
      'orange'
    elsif count >= 40
      'red'
    end
  end
end

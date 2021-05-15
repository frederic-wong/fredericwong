# frozen_string_literal: true

class TheGymCountController < ApplicationController
  def index
    @graph_data = [{ name: 'Gym goers', data: TheGymCount.where(created_at: 7.days.ago..Date.today).pluck(:created_at, :gymer) }]
    @current_gym_count = TheGymCount.last
    @color = define_color(@current_gym_count.gymer)
    @arrow = define_arrow
  end

  def define_color(count)
    if count < 40
      'green'
    elsif count >= 40 && count < 50
      'orange'
    elsif count >= 50
      'red'
    end
  end

  def define_arrow
    if ClimberCount.last.climber > ClimberCount.second_to_last.climber
      'down'
    elsif
      ClimberCount.last.climber < ClimberCount.second_to_last.climber
      'up'
    end
  end
end

# frozen_string_literal: true

class ClimberCountController < ApplicationController
  def index
    @daily_graph_data = [{ name: 'Daily Climbers',
                           data: ClimberCount.where('created_at >= ?', 1.day.ago).pluck(:created_at, :climber) }]
    @weekly_graph_data = [{ name: 'Weekly Climbers',
                            data: ClimberCount.where('created_at >= ?', 7.days.ago).pluck(:created_at, :climber) }]
    @current_climber_count = ClimberCount.last.climber
  end
end

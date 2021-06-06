# frozen_string_literal: true

class TheGymCountController < ApplicationController
  def index
    @daily_graph_data = [{ name: 'Daily Gym goers',
                           data: TheGymCount.where('created_at >= ?', 1.day.ago).pluck(:created_at, :gymer) }]
    @weekly_graph_data = [{ name: 'Weekly Gym goers',
                            data: TheGymCount.where('created_at >= ?', 7.days.ago).pluck(:created_at, :gymer) }]
    @current_gym_count = TheGymCount.last.gymer
  end
end

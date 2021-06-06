# frozen_string_literal: true

class TheGymCountController < ApplicationController
  def index
    @graph_data = [{ name: 'Gym goers',
                     data: TheGymCount.where('created_at >= ?', 7.days.ago).pluck(:created_at, :gymer) }]
    @current_gym_count = TheGymCount.last.gymer
  end
end

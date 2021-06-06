# frozen_string_literal: true

class ClimberCountController < ApplicationController
  def index
    @graph_data = [{ name: 'Climbers',
                     data: ClimberCount.where('created_at >= ?', 7.days.ago).pluck(:created_at, :climber) }]
    @current_climber_count = ClimberCount.last
  end
end

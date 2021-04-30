# frozen_string_literal: true

class ClimberCountController < ApplicationController
  def index
    @climber_count = ClimberCount.all
  end
end

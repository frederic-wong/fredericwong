# frozen_string_literal: true

module ApplicationHelper
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

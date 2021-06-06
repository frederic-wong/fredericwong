# frozen_string_literal: true

Given('there are some climbers') do
  @climbers = create :climber_count
end

When('I visit the climber count page') do
  visit climber_count_index_path
end

Then('I should see the number of climbers') do
  expect(page).to have_content(@climbers.climber)
end

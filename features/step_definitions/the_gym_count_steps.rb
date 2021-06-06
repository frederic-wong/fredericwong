# frozen_string_literal: true

Given('there are some gymers') do
  @gymers = create :the_gym_count
end

When('I visit the gym count page') do
  visit the_gym_count_index_path
end

Then('I should see the number of gymers') do
  expect(page).to have_content(@gymers.gymer)
end

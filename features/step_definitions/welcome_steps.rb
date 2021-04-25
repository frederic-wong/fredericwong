# frozen_string_literal: true

When('I visit the welcome page') do
  visit root_path
end

Then('I should see my name') do
  expect(page).to have_content('Frederic Wong')
end

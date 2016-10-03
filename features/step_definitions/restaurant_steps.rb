Then(/^I should be on the restaurant page for "([^"]*)"$/) do |name|
  restaurant_id = Menu.find_by(name: name)
  expect(current_path).to eq restaurant_path(restaurant_id)
end

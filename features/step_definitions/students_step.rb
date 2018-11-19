Given("I am student") do
  @user = FactoryBot.create :student
end

Given("I am signed in") do
  visit '/users/sign_in'
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'Log in'
end

Then("I should see the courses being offered") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I click on a course") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the register page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on register") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("that course should be registered") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given /^I visit Facebook homepage$/ do
visit('http://www.facebook.com')
end

When(/^I sign in with email and pas$/) do
  
    fill_in 'Email or Phone', :with => 'solomonnsumba@rocketmail.com'
    fill_in 'Password', :with => 'ali'

   click_button ('Log In')
end

Then(/^I should see "(.*?)"$/) do |arg1|

page.should have_content('Incorrect Email')

end


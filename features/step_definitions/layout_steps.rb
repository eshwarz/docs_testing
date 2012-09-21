Given /^I am not authenticated$/ do
  visit '/users/sign_out'
end

Then /^I should see the logo pointing to "([^"]*)"$/ do |link|
  #Checks which link the image is pointing to
  find(:xpath, "//img[@id = 'logo']/parent::a")[:href].should == link
end

Then /^I should see the search bar at the top of "([^"]*)"$/ do |webpage|
  page.should have_selector('#search_div')
end

Then /^I should see "([^"]*)" pointing to "([^"]*)"$/ do |text, link|
  page.should have_link(text, :href => link)
end

Then /^I should see these header navigation links$/ do |links|
  links.hashes.each do |link|
    page.should have_link(link[:name], :href => link[:link])
  end
end

Then /^I should see these user header navigation links$/ do |links|
  links.hashes.each do |link|
    find(:xpath, "//img[@alt = '#{link[:name]}_icon']/parent::a")[:href].should == link[:link]
  end
end

Then /^I should see the sign in form in the header$/ do
  page.should have_selector('#user_username', :type => 'text')
  page.should have_selector('#user_password', :type => 'password')
end

Then /^I should see the facebook connect link in the header$/ do
  find(:xpath, "//img[@alt = 'Fconnect']/parent::a")[:href].should == '/auth/facebook'
end

Then /^I should see these footer navigation links$/ do |links|
  links.hashes.each do |link|
    page.should have_link(link[:name], :href => link[:link])
  end
end

Then /^I should see "([^"]*)" in the footer$/ do |text|
  page.should have_selector('#terms', :content => text)
end

Given /^I log in as "([^"]*)"$/ do |email, information|
  user = information.hashes[0]

  test_user = FactoryGirl.create(:user,
                         :email => user[:email],
                         :password => user[:password],
                         :password_confirmation => user[:password],
                         :last_name => user[:last_name],
                         :first_name => user[:first_name],
                         :confirmed_at => Time.now
                         )

  within '#new_user' do
    fill_in 'user_email', :with => test_user.email
    fill_in 'user_password', :with => test_user.password
    click_button 'user_sign_in'
  end

  @name = "#{user[:first_name]} #{user[:last_name]}"
end

Then /^I should not see the sign in form$/ do
  page.should_not have_selector('#user_username')
  page.should_not have_selector('#user_password')
end

Then /^I should not see the facebook connect link$/ do
  page.should_not have_selector('#signin > a > img', :alt => 'Fconnect')
end

Then /^I should see my name$/ do
  page.should have_selector('#uname', :content => @name)
end

Then /^I should see my unread message count$/ do
  page.should have_selector('#notifications-count')
end

Then /^I should see my profile photo next to my name, "([^"]*)", in the header$/ do |name|
  page.should have_selector('#pic_container > a > img', :title => @name)
end

When /^the user clicks "([^"]*)"$/ do |restricted_page|
 visit restricted_page 
end

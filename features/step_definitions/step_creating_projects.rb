#Given /^I am on the homepage$/ do
 # pending # express the regexp above with the code you wish you had
#end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

#When /^I follow "(.*?)"$/ do |arg1|
#  pending # express the regexp above with the code you wish you had
#end

When /^(?:|I )follow "([^\"]*)"$/ do |link|
  click_link(link)
end

#When /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
#  pending # express the regexp above with the code you wish you had
#end

When /^(?:|I )fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

#When /^I press "(.*?)"$/ do |arg1|
#  pending # express the regexp above with the code you wish you had
#end

When /^(?:|I )press "([^\"]*)"$/ do |button|
  click_button(button)
end

#Then /^I should see "(.*?)"$/ do |arg1|
#  pending # express the regexp above with the code you wish you had
#end

Then /^(?:|I )should see "([^\"]*)"$/ do |text|
  if defined?(Spec::Rails::Matchers)
    response.should contain(text)
  else
    have_content(text)
  end
end

Then /^(?:|I )should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).select(:path, :query).compact.join('?')
  if defined?(Spec::Rails::Matchers)
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end

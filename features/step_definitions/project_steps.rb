Given /^there is a project called "([^\"]*)"$/ do |pname|
	#Factory(:project, :name => name)
	FactoryGirl.create(:project, :name => pname )
end
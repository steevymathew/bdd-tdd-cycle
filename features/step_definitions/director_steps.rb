Given /the following movies exist:/ do |table|
    table.hashes.each do |row|
        Movie.create row
    end
end

When /^(?:|I )go to the edit page for "(.+)"$/ do |movie_name| 
    visit('/')
    expect(page).to have_content("Include") #check to see if at home
    click_link("More about "+movie_name)
    expect(page).to have_content("Details about "+movie_name) #check to see if at correct page
    click_link("Edit")
    expect(page).to have_content("Edit Existing Movie") #check to see if at correct page
end

And /^(?:|I )fill in "(.+)" with "(.+)"$/ do |form_field,form_entry| 
   fill_in form_field, with: form_entry
end

And /^I press "(.+)"$/ do |button| 
    click_button(button)
end

Then /^the director of "(.+)" should be "(.+)"$/ do |name,director| 
    expect(page).to have_content("Director: "+director)
end

Given /^I am on the details page for "(.+)"$/ do |movie_name|
    visit('/')
    expect(page).to have_content("Include") #check to see if at home
    click_link("More about "+movie_name)
    expect(page).to have_content("Details about "+movie_name) #check to see if at correct page
end

When  /^I follow "Find Movies With Same Director"$/ do
    click_link("Find Movies With Same Director")
end

Then  /^I should be on the Similar Movies page for "(.+)"$/ do |movie_name|
    expect(page).to have_content('Similar movies')
    expect(page).to have_content(movie_name)
end

And   /^I should see "(.+)"$/ do |content|
    expect(page).to have_content(content)
end

But   /^I should not see "(.+)"$/ do |content|
    expect(page).not_to have_content(content)
end

Then  /^I should be on the home page$/ do
     visit('/')
end


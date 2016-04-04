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
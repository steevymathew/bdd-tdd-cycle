Given /the following movies exist:/ do |table|
    table.hashes.each do |row|
        Movie.create row
    end
end


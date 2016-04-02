require 'spec_helper'

describe Movie do
    
    it 'director' do
        expect do
            Movie.new(director: true)
        end.to_not raise_error
    end
end
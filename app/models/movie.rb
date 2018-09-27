class Movie < ActiveRecord::Base
    def self.allratings
        Movie.select(:rating).distinct.inject([]) {|a, m| a.push m.rating }
    end
end

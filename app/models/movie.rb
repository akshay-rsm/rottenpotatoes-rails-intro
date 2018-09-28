class Movie < ActiveRecord::Base
    def self.send_all_ratings               #get movie ratings from database
        Movie.select(:rating).distinct.inject([]) {|a,m| a.push m.rating}
    end
end

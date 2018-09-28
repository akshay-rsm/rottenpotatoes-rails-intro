class Movie < ActiveRecord::Base
    def self.send_all_ratings
        Movie.select(:rating).distinct.inject([]) {|a,m| a.push m.rating}
    end
end

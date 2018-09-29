class Movie < ActiveRecord::Base
    def self.send_all_ratings               #get movie ratings from database
        return ['G','PG','PG-13','R']
    end
end

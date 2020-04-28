class Show < ActiveRecord::Base 

    def self.highest_rating
        show = self.maximum("rating")
    end

    def self.most_popular_show
        show = self.order(rating: :desc).first
    end

    def self.lowest_rating
        show = self.minimum("rating")
    end

    def self.least_popular_show
        show = self.order("rating").first
    end

    def self.ratings_sum
        show = self.sum("rating")
    end

    def self.popular_shows
        show = self.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        show = self.order("name")
    end

end
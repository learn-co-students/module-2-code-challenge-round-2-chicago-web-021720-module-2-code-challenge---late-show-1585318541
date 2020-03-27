class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def avg_rating
        sum = 0
        appearances.each do |appearance|
            sum += appearance.rating
        end
        (sum.to_f / appearances.length).round(2)
    end 
end

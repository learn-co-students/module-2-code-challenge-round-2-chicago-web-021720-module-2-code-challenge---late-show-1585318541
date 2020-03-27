class Appearance < ApplicationRecord
    belongs_to :guest 
    belongs_to :appearance
end


# Guests and Episodes have a many to many relationship through Appearances. 
# A single Appearance belongs to one Guest and one Episode.
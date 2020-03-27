class Guest < ApplicationRecord
has_many :episodes, through: :appearances
end


# Guests and Episodes have a many to many relationship through Appearances.
#  A single Appearance belongs to one Guest and one Episode.
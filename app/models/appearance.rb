class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates_presence_of :episode_id
    validates :rating, inclusion: { in: 1..5, message: "has to be between 1 and 5." }
    validates :guest_id, uniqueness: { scope: :episode_id, message: "is already on this episode." }
end

class Habit < ApplicationRecord
    has_one :loop
    belongs_to :user
end
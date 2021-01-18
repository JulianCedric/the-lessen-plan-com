class User < ApplicationRecord
    has_many :habits
    belongs_to :plan
end
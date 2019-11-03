class Turtle < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    # validates :user_id, presence: true
    validates :species, presence: true

    belongs_to :user
    has_many :turtle_data
end

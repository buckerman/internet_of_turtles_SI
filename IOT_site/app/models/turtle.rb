class Turtle < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    # validates :user_id, presence: true
    validates :species, presence: true

    if @super_user
        @researcher = User.find(:user_id) 
    else
        @researcher = @current_user
    end
    belongs_to :user
    has_many :turtle_data
end

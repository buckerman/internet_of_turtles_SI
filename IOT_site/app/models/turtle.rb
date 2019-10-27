class Turtle < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    # validates :researcher_id, presence: true
    validates :species, presence: true

    if @super_user
        @researcher = User.find(:researcher_id) 
    else
        @researcher = @current_user
    end
    belongs_to @researcher
end

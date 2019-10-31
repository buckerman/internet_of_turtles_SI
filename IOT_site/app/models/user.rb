class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :image
  has_secure_password  

  validates :email, presence: true, uniqueness: true
  
  # validates :occupation, presence: true
  # validates :institution, presence: true
  # validates :password, length: { in: 6..20 }, format: {message: 'must be have between 6 and 20 chars'}
  # validates :image_url, allow_blank: true, format: {with: %r{\.( gif | jpg | png )\Z }i ,message: 'must be a URL for GIF , JPG or PNG image . '}

  has_many :turtles
end


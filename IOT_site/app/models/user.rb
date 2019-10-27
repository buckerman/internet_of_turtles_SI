class User < ApplicationRecord
  has_secure_password
  
  validates :email, presence: true, uniqueness: true
  
  # validates :occupation, presence: true
  # validates :institution, presence: true
  # validates :password, length: { in: 6..20 }, format: {message: 'must be have between 6 and 20 chars'}
  # :user_id = 0
  # validates :image_url, allow_blank: true, format: {with: %r{\.( gif | jpg | png )\Z }i ,message: 'must be a URL for GIF , JPG or PNG image . '}

  
end

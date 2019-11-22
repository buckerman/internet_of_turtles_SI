class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :image
  has_secure_password

  validates :email, presence: true, uniqueness: true, :format => { 
    :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
    :message => "must be a valid email address"
  }

  # validates :occupation, presence: true
  # validates :institution, presence: true
  # validates :password, length: { in: 6..20 }, format: {message: 'must be have between 6 and 20 chars'}
  # validates :image_url, allow_blank: true, format: {with: %r{\.( gif | jpg | png )\Z }i ,message: 'must be a URL for GIF , JPG or PNG image . '}

  has_many :turtles

  def self.search(search)
    if search.present?
        User.where('name LIKE ?', "%#{search}%")
    else
        User.all
    end
  end  
end


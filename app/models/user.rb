class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :image
  has_secure_password


  validates :email, presence: true, uniqueness: true, :format => { 
    :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
    :message => "must be a valid email address"
  }

 

  validates :occupation, presence: true
  validates :institution, presence: true

  has_many :turtles, dependent: :destroy

  def self.search(search)
    if search.present?
        User.where("name LIKE ? OR Institution LIKE ? OR email LIKE ?", "%#{search}%","%#{search}%", "%#{search}%")
    else
        User.all
    end
  end  
end


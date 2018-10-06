class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages
  has_and_belongs_to_many :channels
  has_one_attached :image

  validates :username, uniqueness: true, presence: true

  def check_name
  	@last_username = username
  	if display_name.nil?
  		return username
  	else
  		return display_name
  	end
  end


end

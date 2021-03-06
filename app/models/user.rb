class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :listings, :dependent => :destroy
  has_many :favorites, :dependent => :destroy
  has_many :favorite_listings, through: :favorites, class_name: :Listing, :dependent => :destroy
end

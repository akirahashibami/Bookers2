class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :book, dependent: :destroy

	validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
	validates :email, presence: true
	validates :password, presence: true
end

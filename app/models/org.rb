class Org < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :events, dependent: :destroy
  has_many :businesses, through: :events

  has_many :pages, dependent: :destroy

  has_one :event_pages, through: :events


end

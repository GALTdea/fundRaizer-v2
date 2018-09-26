class Business < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable





  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  extend FriendlyId
  friendly_id :name, use: :slugged



  mount_uploader :business_image, BusinessImageUploader


  has_many :events, dependent: :destroy
  has_many :orgs, through: :events


  


  #alias_attribute :slug, :column_name

end

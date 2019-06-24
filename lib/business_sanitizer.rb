class BusinessParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [ :name , :email, :password,  :manager, :phone_number, :bus_type, :address_1, :city, :region, :zip_code,:main_image, :thumb_image])
    permit(:account_update , keys: [:name, :email, :password,  :manager, :phone_number, :bus_type, :address_1, :city, :region, :zip_code, :image,:main_image, :thumb_image, :business_image])



  end
end




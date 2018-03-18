class Org::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [ :email, :password, :name, :manager, :phone_number, :org_type, :address, :city, :region, :zip_code ])
    permit(:account_update, keys: [ :email, :password, :name, :manager, :phone_number, :org_type, :address, :city, :region, :zip_code ])

  end
end

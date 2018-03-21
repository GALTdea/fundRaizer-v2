module BusinessesHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img f
    if f.business_image?
      img
    else
      image_generator(height: '350', width: '200')
    end
  end
end

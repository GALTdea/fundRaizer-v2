module BusinessesHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img f
    if f.business_image?
      f.business_image
    else
      image_generator(height: '200', width: '150')
    end
  end
end

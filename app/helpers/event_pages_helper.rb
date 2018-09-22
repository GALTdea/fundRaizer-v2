module EventPagesHelper

	def event_confirmation_helper f
	    if f.business_active == false and current_business
	      return (link_to "Accept Event", confirmation_event_path( f , event: { business_active: true } ), method: :put)
	    elsif f.business_active == true and current_business
	      return (link_to "Cancell Event", confirmation_event_path( f , event: { business_active: false } ), method: :put)
	    elsif f.org_active == true and current_org
	      return (link_to "Cancell Event", confirmation_event_path( f , event: { org_active: false } ), method: :put)
	    elsif f.org_active == false and current_org
	      return (link_to "Reactivate Event", confirmation_event_path( f , event: { org_active: true } ), method: :put)
	    end
	end



	def confirmation_message f
	  message = ""
	   if f.business_active == false
	     if current_org
	    return message + 'Waiting for business to responde'.html_safe
	     elsif current_business
	      return message + "waiting for your response".html_safe
	     end
	   elsif f.business_active == true and f.org_active == true
	     return message + "The event is on!".html_safe
	   end
	end



	def image_generator(height:, width:)
	  "http://placehold.it/#{height}x#{width}"
	end

	def event_page_img img, type
	  if img.model.main_image? || img.model.thumb_image?
	    img
	  elsif type == 'thumb'
	    image_generator(height: '350', width: '200')
	  elsif type == 'main'
	    image_generator(height: '600', width: '400')
	  end
	end




end

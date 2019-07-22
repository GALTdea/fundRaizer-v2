module ApplicationHelper


def alerts
  alert = (flash[:alert] || flash[:notice] || flash[:error] )
  if alert
    alert_generator alert
  end
end

# method created for alerts that don't get saved on the cash, we need to be abele to pass the message to the flash
#forms do not store messges in cash
  def alert_generator msg
    js add_gritter(msg, title:  "FundRaisable App", sticky: false)
  end



# determine if  EventPage 
def event_page_show? 
 controller_name == "event_pages" && action_name == "show"
end



  
end

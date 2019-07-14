class PagesController < ApplicationController
  def welcome
  	@event_pages = EventPage.all
  end

  def about
  end

  def home
  end

  def ourcause
  end
end

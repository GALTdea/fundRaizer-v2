class CampaignPagesController < ApplicationController
  
  def index
  	@campaign_pages = CampaignPage.all
  end

  def show
  	@campaign_page = CampaignPage.find(params[:id])
  end

  def new
  	@campaign_page = CampaignPage.new
  end

  def create
    binding.pry
  	@campaign_page = CampaignPage.create(campaign_page_params)
    @campaign_page.user_id = current_user.id
    if @campaign_page.save
      redirect_to @campaign_page
    else
      render 'new'
    end
  end




  def edit
    @campaign_page = CampaignPage.find(params[:id])
  end

  def update
    @campaign_page = CampaignPage.find(params[:id])
    if @campaign_page.update_attributes(campaign_page_params)
      redirect_to campaign_page_path(@campaign_page)
    end
  end




  private


  def campaign_page_params 
		params.require(:campaign_page).permit( 
                   :title, 
                   :organized_by, 
                   :deal_info, 
                   :in_bene_of, 
			             :story, 
                   :deal_1, 
                   :deal_2, 
                   :deal_3, 
                   :deal_4, 
                   :deal_5,
                   :organizer_address,
			             :deals_sold, 
                   :buyers, 
                   :user_id 
                  )
  end 


	# t.string "title"
 #    t.string "organized_by"
 #    t.text "deal_info"
 #    t.string "in_bene_of"
 #    t.text "story"
 #    t.string "deal_1"
 #    t.string "deal_2"
 #    t.string "deal_3"
 #    t.string "deal_4"
 #    t.string "deal_5"
 #    t.string "organizer_address"
 #    t.integer "deals_sold"
 #    t.string "buyers"
 #    t.bigint "user_id"
 #    t.datetime "created_at", null: false
 #    t.datetime "updated_at", null: false


end

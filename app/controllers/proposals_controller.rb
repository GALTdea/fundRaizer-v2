class ProposalsController < ApplicationController
  
  def index
  end

  def show
  end

  def edit
    
  end

  def upgrade
  end

  def new
  	@proposal = Proposal.new
  end

  def create
  	@proposal = Proposal.create(proposal_params)
  	@proposal.org_id = current_org.id
  	if @proposal.save
  		redirect_to root_path
  	else
  		render "new"
  	end

  end


  private
	def proposal_params 
		params.require(:proposal).permit(:description, :reach, :amount_goal, :location, :date, :org_id )
	end 

# params.require(:event).permit(:business_id, :org_id, :name, :about, :date, :business_active , :number_of_guess, :org_active)

end

    # t.string "description"
    # t.string "reach"
    # t.string "amount_goal"
    # t.string "location"
    # t.date "date"
    # t.bigint "org_id"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.index ["org_id"], name: "index_proposals_on_org_id"
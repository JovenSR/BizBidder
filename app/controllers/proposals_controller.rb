class ProposalsController < ApplicationController
  before_action :set_proposal, only: [:show, :edit, :update, :destroy]

  # GET /proposals
  # GET /proposals.json
  def index
    @service_provider = User.find(current_user.id)
    @proposals = Proposal.where("service_provider_id = ?", @service_provider.id)
  end

  # GET /proposals/1
  # GET /proposals/1.json
  def show
    @proposal = Proposal.find(params[:id])
    @service_provider = ServiceProvider.find(@proposal.service_provider_id)
    @user = User.find(@service_provider.user_id)
  end

  # GET /proposals/new
  def new
     
    @proposal = Proposal.new(params[:request_id])
  end

  # GET /proposals/1/edit
  def edit
  end

  # POST /proposals
  # POST /proposals.json
  def create
     
    @proposal = Proposal.new(proposal_params)
     
    # @price = params[:proposal][:price].gsub(/\D/, '').to_i
    # @request_id = params[:proposal][:request_id].to_i
    # @service_provider_id = params[:proposal][:service_provider_id].to_i
    # @description = params[:proposal][:description]
    # @accept = false 
    # @proposal = Proposal.new(:price => @price,:request_id => @request_id, :service_provider_id => @service_provider_id, :description => @description, :accept => @accept)
    byebug
    puts "Valid Proposal? #{@proposal.valid?}"

    respond_to do |format|
      if @proposal.save
        format.html { redirect_to @proposal, notice: 'Proposal was successfully created.' }
        format.json { render :show, status: :created, location: @proposal }
      else
        format.html { render :new }
        format.json { render json: @proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proposals/1
  # PATCH/PUT /proposals/1.json
  def update
    respond_to do |format|
      if @proposal.update(proposal_params)
        format.html { redirect_to @proposal, notice: 'Proposal was successfully updated.' }
        format.json { render :show, status: :ok, location: @proposal }
      else
        format.html { render :edit }
        format.json { render json: @proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposals/1
  # DELETE /proposals/1.json
  def destroy
    @proposal.destroy
    respond_to do |format|
      format.html { redirect_to proposals_url, notice: 'Proposal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposal
      @proposal = Proposal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposal_params
      params.require(:proposal).permit(:description, :price, :accept, :request_id, :service_provider_id)
    end
end

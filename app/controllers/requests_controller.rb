class RequestsController < ApplicationController
  protect_from_forgery
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index

    if params[:category]
      @requests = Request.where("category = ?", params[:category])
    elsif params[:user_id]
      @requests = Request.where("user_id = ?", params[:user_id])
    else
      puts "we are in the index page without the params"
      @requests = Request.all
    end

  end

  def update_accept
    #Model.where(:email =>"test@test.com",:code => "chejd").update(:password => "password")
    proposalid = params[:proposalid]
    requestid = params[:requestid]
    Proposal.where(:id => proposalid).update(:accept => true)
    Request.where(:id => requestid).update(:status => 'Taken')
    UserMailer.accept_email(proposalid).deliver_now
    puts "AFTER EMAIL SENT"
    #redirect_to request_path(requestid)
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    @request = Request.find(params[:id])
    @sp = current_user.service_providers
    if current_user.userrole == 'service_provider'
       @proposals = Proposal.where(request_id: [@request.id], service_provider_id: @sp[0].id)
    elsif current_user.userrole == 'user'
      @proposals = Proposal.where(request_id: [@request.id])
    end

  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @user = current_user
    @status = 'Open'
    @request = Request.new(request_params)
    @request.user_id = @user.id

    respond_to do |format|
      if @request.save
        Request.where(:id => @request.id).update(:status => 'Open')
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:name, :description, :budget, :proposalDeadline, :eventDate, :address, :city, :province, :category, :status, :user_id)
    end
end

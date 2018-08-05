class ServiceProvidersController < ApplicationController
  before_action :set_service_provider, only: [:show, :edit, :update, :destroy]

  # GET /service_providers
  # GET /service_providers.json
  def index
    if params[:serviceType]
      serviceType = params[:serviceType]
      @service_providers = ServiceProvider.where(serviceType: serviceType)
      puts '@service_providers is'
      puts @service_providers
    else
      @service_providers = ServiceProvider.all
    end

  end

  def my_proposals
    sp = current_user.service_providers
    @proposals = sp[0].proposals
  end

  # GET /service_providers/1
  # GET /service_providers/1.json


  def show
  end

  # GET /service_providers/new
  def new
    puts params[:id]
    @service_provider = ServiceProvider.new()
  end

  # GET /service_providers/1/edit
  def edit
  end

  # POST /service_providers
  # POST /service_providers.json
  def create

    @service_provider = ServiceProvider.new(service_provider_params)

    respond_to do |format|
      if @service_provider.save
        format.html { redirect_to @service_provider, notice: 'Service provider was successfully created.' }
        format.json { render :show, status: :created, location: @service_provider }
      else
        format.html { render :new }
        format.json { render json: @service_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_providers/1
  # PATCH/PUT /service_providers/1.json
  def update
    respond_to do |format|
      if @service_provider.update(service_provider_params)
        format.html { redirect_to @service_provider, notice: 'Service provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_provider }
      else
        format.html { render :edit }
        format.json { render json: @service_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_providers/1
  # DELETE /service_providers/1.json
  def destroy
    @service_provider.destroy
    respond_to do |format|
      format.html { redirect_to service_providers_url, notice: 'Service provider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_provider
      sp = current_user.service_providers
        @service_provider = ServiceProvider.find(params[:id] )

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_provider_params
      params.require(:service_provider).permit(:companyName, :street, :city, :province, :postalCode, :email, :phone, :serviceType, :website, :license, :avatar, :user_id)
    end
end

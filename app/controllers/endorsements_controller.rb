class EndorsementsController < ApplicationController
  before_action :set_endorsement, only: [:show, :edit, :update, :destroy]

  # GET /endorsements
  def index
    @endorsements = Endorsement.all
  end

  # GET /endorsements/1
  def show
  end

  # GET /endorsements/new
  def new
    @endorsement = Endorsement.new
  end

  # GET /endorsements/1/edit
  def edit
  end

  # POST /endorsements
  def create
    @endorsement = Endorsement.new(endorsement_params)

    if @endorsement.save
      redirect_to @endorsement, notice: 'Endorsement was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /endorsements/1
  def update
    if @endorsement.update(endorsement_params)
      redirect_to @endorsement, notice: 'Endorsement was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /endorsements/1
  def destroy
    @endorsement.destroy
    redirect_to endorsements_url, notice: 'Endorsement was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endorsement
      @endorsement = Endorsement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def endorsement_params
      params.fetch(:endorsement, {})
    end
end

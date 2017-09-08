class EnrolmentsController < ApplicationController
  before_action :set_enrolment, only: [:show, :edit, :update, :destroy]

  # GET /enrolments
  def index
    @enrolments = Enrolment.all
  end

  # GET /enrolments/1
  def show
  end

  # GET /enrolments/new
  def new
    @enrolment = Enrolment.new
  end

  # GET /enrolments/1/edit
  def edit
  end

  # POST /enrolments
  def create
    @enrolment = Enrolment.new(enrolment_params)

    if @enrolment.save
      redirect_to @enrolment, notice: 'Enrolment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /enrolments/1
  def update
    if @enrolment.update(enrolment_params)
      redirect_to @enrolment, notice: 'Enrolment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /enrolments/1
  def destroy
    @enrolment.destroy
    redirect_to enrolments_url, notice: 'Enrolment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrolment
      @enrolment = Enrolment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enrolment_params
      params.fetch(:enrolment, {})
    end
end

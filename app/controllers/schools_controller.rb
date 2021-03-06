class SchoolsController < ApplicationController
  load_and_authorize_resource :school

  before_action :set_school, only: [:show, :edit, :update, :destroy]

  # GET /schools
  def index
    @schools = School.all
  end

  # GET /schools/1
  def show
  end

  # GET /schools/new
  def new
    @school = School.new
  end

  # GET /schools/1/edit
  def edit
  end

  # POST /schools
  def create
    @school = School.new(school_params)

    if @school.save
      redirect_to @school, notice: 'School was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /schools/1
  def update
    if @school.update(school_params)
      redirect_to @school, notice: 'School was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /schools/1
  def destroy
    @school.destroy
    redirect_to schools_url, notice: 'School was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def school_params
      params.require(:school).permit(:name, :name_in_hindi, :brief, :established_in, :fee_id, :contact_no, addresses_attributes: [:id,:plot_no,:steet,:colony,:city,:state, :_destroy],fees_attributes: [:id,:adm_fee,:annual_fee,:mis_fee,:year, :_destroy])
    end
end

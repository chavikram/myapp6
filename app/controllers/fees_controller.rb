class FeesController < ApplicationController
  before_action :set_fee, only: [:show, :edit, :update, :destroy]

  # GET /fees
  def index
    @fees = Fee.all
  end

  # GET /fees/1
  def show
  end

  # GET /fees/new
  def new
    @fee = Fee.new
  end

  # GET /fees/1/edit
  def edit
  end

  # POST /fees
  def create
    @fee = Fee.new(fee_params)

    if @fee.save
      redirect_to @fee, notice: 'Fee was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /fees/1
  def update
    if @fee.update(fee_params)
      redirect_to @fee, notice: 'Fee was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fees/1
  def destroy
    @fee.destroy
    redirect_to fees_url, notice: 'Fee was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fee
      @fee = Fee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fee_params
      params.require(:fee).permit(:adm_fee, :annual_fee, :mis_fee, :year)
    end
end

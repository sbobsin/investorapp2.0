class CapitalDistributionsController < ApplicationController
  before_action :set_capital_distribution, only: %i[ show edit update destroy ]

  # GET /capital_distributions or /capital_distributions.json
  def index
    @capital_distributions = CapitalDistribution.all
  end

  # GET /capital_distributions/1 or /capital_distributions/1.json
  def show
  end

  # GET /capital_distributions/new
  def new
    @capital_distribution = CapitalDistribution.new
  end

  # GET /capital_distributions/1/edit
  def edit
  end

  # POST /capital_distributions or /capital_distributions.json
  def create
    @capital_distribution = CapitalDistribution.new(capital_distribution_params)

    respond_to do |format|
      if @capital_distribution.save
        format.html { redirect_to @capital_distribution, notice: "Capital distribution was successfully created." }
        format.json { render :show, status: :created, location: @capital_distribution }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @capital_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capital_distributions/1 or /capital_distributions/1.json
  def update
    respond_to do |format|
      if @capital_distribution.update(capital_distribution_params)
        format.html { redirect_to @capital_distribution, notice: "Capital distribution was successfully updated." }
        format.json { render :show, status: :ok, location: @capital_distribution }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @capital_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capital_distributions/1 or /capital_distributions/1.json
  def destroy
    @capital_distribution.destroy
    respond_to do |format|
      format.html { redirect_to capital_distributions_url, notice: "Capital distribution was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capital_distribution
      @capital_distribution = CapitalDistribution.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capital_distribution_params
      params.require(:capital_distribution).permit(:return_of_capital, :capital_account_id)
    end
end

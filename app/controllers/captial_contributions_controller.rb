class CaptialContributionsController < ApplicationController
  before_action :set_captial_contribution, only: %i[ show edit update destroy ]

  # GET /captial_contributions or /captial_contributions.json
  def index
    @captial_contributions = CaptialContribution.all
  end

  # GET /captial_contributions/1 or /captial_contributions/1.json
  def show
  end

  # GET /captial_contributions/new
  def new
    @captial_contribution = CaptialContribution.new
  end

  # GET /captial_contributions/1/edit
  def edit
  end

  # POST /captial_contributions or /captial_contributions.json
  def create
    @captial_contribution = CaptialContribution.new(captial_contribution_params)

    respond_to do |format|
      if @captial_contribution.save
        format.html { redirect_to @captial_contribution, notice: "Captial contribution was successfully created." }
        format.json { render :show, status: :created, location: @captial_contribution }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @captial_contribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /captial_contributions/1 or /captial_contributions/1.json
  def update
    respond_to do |format|
      if @captial_contribution.update(captial_contribution_params)
        format.html { redirect_to @captial_contribution, notice: "Captial contribution was successfully updated." }
        format.json { render :show, status: :ok, location: @captial_contribution }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @captial_contribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /captial_contributions/1 or /captial_contributions/1.json
  def destroy
    @captial_contribution.destroy
    respond_to do |format|
      format.html { redirect_to captial_contributions_url, notice: "Captial contribution was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_captial_contribution
      @captial_contribution = CaptialContribution.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def captial_contribution_params
      params.require(:captial_contribution).permit(:user_id, :original_contribution, :current_capital_balance)
    end
end

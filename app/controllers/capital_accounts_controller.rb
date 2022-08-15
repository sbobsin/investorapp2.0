class CapitalAccountsController < ApplicationController
  before_action :set_capital_account, only: %i[ show edit update destroy ]

  # GET /capital_accounts or /capital_accounts.json
  def index
    @capital_accounts = CapitalAccount.all
  end

  # GET /capital_accounts/1 or /capital_accounts/1.json
  def show
  end

  # GET /capital_accounts/new
  def new
    @capital_account = CapitalAccount.new
  end

  # GET /capital_accounts/1/edit
  def edit
  end

  # POST /capital_accounts or /capital_accounts.json
  def create
    @capital_account = CapitalAccount.new(capital_account_params)

    respond_to do |format|
      if @capital_account.save
        format.html { redirect_to @capital_account, notice: "Capital account was successfully created." }
        format.json { render :show, status: :created, location: @capital_account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @capital_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capital_accounts/1 or /capital_accounts/1.json
  def update
    respond_to do |format|
      if @capital_account.update(capital_account_params)
        format.html { redirect_to @capital_account, notice: "Capital account was successfully updated." }
        format.json { render :show, status: :ok, location: @capital_account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @capital_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capital_accounts/1 or /capital_accounts/1.json
  def destroy
    @capital_account.destroy
    respond_to do |format|
      format.html { redirect_to capital_accounts_url, notice: "Capital account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capital_account
      @capital_account = CapitalAccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capital_account_params
      params.require(:capital_account).permit(:initial_balance, 
                                              :current_balance,
                                              :deal_id,
                                              :user_id,
                                              capital_distributions_attributes: [
                                                :id,
                                                :return_of_capital
                                              ]
                                              )
    end
end

class BillsController < ApplicationController
  before_action :set_bill, only: %i[ show edit update destroy ]

  # GET /bills or /bills.json
  def index
    @bills = Bill.all
  end

  # GET /bills/1 or /bills/1.json
  def show
  end

  # GET /bills/new
  def new
    @bill = Bill.new
  end

  # GET /bills/1/edit
  def edit
  end

  # POST /bills or /bills.json
  def create
    @bill = Bill.new(bill_params)

    respond_to do |format|
      if @bill.save
        format.html { redirect_to @bill, notice: "Bill was successfully created." }
        format.json { render :show, status: :created, location: @bill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bills/1 or /bills/1.json
  def update
    respond_to do |format|
      if @bill.update(bill_params)
        format.html { redirect_to @bill, notice: "Bill was successfully updated." }
        format.json { render :show, status: :ok, location: @bill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bills/1 or /bills/1.json
  def destroy
    @bill.destroy!

    respond_to do |format|
      format.html { redirect_to bills_path, status: :see_other, notice: "Bill was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill
      @bill = Bill.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bill_params
      params.expect(bill: [ :name, :address, :npa, :city, :email, :phone, :iban ])
    end
end

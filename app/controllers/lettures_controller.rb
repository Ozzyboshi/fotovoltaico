class LetturesController < ApplicationController
  before_action :set_letture, only: [:show, :edit, :update, :destroy]

  # GET /lettures
  # GET /lettures.json
  def index
    @lettures = Letture.all
  end

  # GET /lettures/1
  # GET /lettures/1.json
  def show
  end

  # GET /lettures/new
  def new
    @letture = Letture.new
  end

  # GET /lettures/1/edit
  def edit
  end

  # POST /lettures
  # POST /lettures.json
  def create
    @letture = Letture.new(letture_params)

    respond_to do |format|
      if @letture.save
        format.html { redirect_to @letture, notice: 'Letture was successfully created.' }
        format.json { render :show, status: :created, location: @letture }
      else
        format.html { render :new }
        format.json { render json: @letture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lettures/1
  # PATCH/PUT /lettures/1.json
  def update
    respond_to do |format|
      if @letture.update(letture_params)
        format.html { redirect_to @letture, notice: 'Letture was successfully updated.' }
        format.json { render :show, status: :ok, location: @letture }
      else
        format.html { render :edit }
        format.json { render json: @letture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lettures/1
  # DELETE /lettures/1.json
  def destroy
    @letture.destroy
    respond_to do |format|
      format.html { redirect_to lettures_url, notice: 'Letture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_letture
      @letture = Letture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def letture_params
      params.require(:letture).permit(:data, :consumofascia1, :consumofascia2, :consumofascia3, :consumofascia1periodoprecedente, :consumofascia2periodoprecedente, :consumofascia3periodoprecedente, :produzionefascia1, :produzionefascia2, :produzionefascia3, :immissionefascia1, :immissionefascia2, :immissionefascia3)
    end
end

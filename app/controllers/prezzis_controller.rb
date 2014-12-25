class PrezzisController < ApplicationController
  before_action :set_prezzi, only: [:show, :edit, :update, :destroy]

  # GET /prezzis
  # GET /prezzis.json
  def index
    @prezzis = Prezzi.all
  end

  # GET /prezzis/1
  # GET /prezzis/1.json
  def show
  end

  # GET /prezzis/new
  def new
    @prezzi = Prezzi.new
  end

  # GET /prezzis/1/edit
  def edit
  end

  # POST /prezzis
  # POST /prezzis.json
  def create
    @prezzi = Prezzi.new(prezzi_params)

    respond_to do |format|
      if @prezzi.save
        format.html { redirect_to @prezzi, notice: 'Prezzi was successfully created.' }
        format.json { render :show, status: :created, location: @prezzi }
      else
        format.html { render :new }
        format.json { render json: @prezzi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prezzis/1
  # PATCH/PUT /prezzis/1.json
  def update
    respond_to do |format|
      if @prezzi.update(prezzi_params)
        format.html { redirect_to @prezzi, notice: 'Prezzi was successfully updated.' }
        format.json { render :show, status: :ok, location: @prezzi }
      else
        format.html { render :edit }
        format.json { render json: @prezzi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prezzis/1
  # DELETE /prezzis/1.json
  def destroy
    @prezzi.destroy
    respond_to do |format|
      format.html { redirect_to prezzis_url, notice: 'Prezzi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prezzi
      @prezzi = Prezzi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prezzi_params
      params.require(:prezzi).permit(:datainiziovalidita, :datafinevalidita, :prezzofascia1, :prezzofascia2, :prezzofascia3)
    end
end

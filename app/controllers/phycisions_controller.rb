class PhycisionsController < ApplicationController
  before_action :set_phycision, only: [:show, :edit, :update, :destroy]

  # GET /phycisions
  # GET /phycisions.json
  def index
    @phycisions = Phycision.all
  end

  # GET /phycisions/1
  # GET /phycisions/1.json
  def show
  end

  # GET /phycisions/new
  def new
    @phycision = Phycision.new
  end

  # GET /phycisions/1/edit
  def edit
  end

  # POST /phycisions
  # POST /phycisions.json
  def create
    @phycision = Phycision.new(phycision_params)

    respond_to do |format|
      if @phycision.save
        format.html { redirect_to @phycision, notice: 'Phycision was successfully created.' }
        format.json { render :show, status: :created, location: @phycision }
      else
        format.html { render :new }
        format.json { render json: @phycision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phycisions/1
  # PATCH/PUT /phycisions/1.json
  def update
    respond_to do |format|
      if @phycision.update(phycision_params)
        format.html { redirect_to @phycision, notice: 'Phycision was successfully updated.' }
        format.json { render :show, status: :ok, location: @phycision }
      else
        format.html { render :edit }
        format.json { render json: @phycision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phycisions/1
  # DELETE /phycisions/1.json
  def destroy
    @phycision.destroy
    respond_to do |format|
      format.html { redirect_to phycisions_url, notice: 'Phycision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phycision
      @phycision = Phycision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phycision_params
      params.require(:phycision).permit(:name)
    end
end

class TestitemsController < ApplicationController
  before_action :set_testitem, only: [:show, :edit, :update, :destroy]

  # GET /testitems
  # GET /testitems.json
  def index
    @testitems = Testitem.all
  end

  # GET /testitems/1
  # GET /testitems/1.json
  def show
  end

  # GET /testitems/new
  def new
    @testitem = Testitem.new
  end

  # GET /testitems/1/edit
  def edit
  end

  # POST /testitems
  # POST /testitems.json
  def create
    @testitem = Testitem.new(testitem_params)

    respond_to do |format|
      if @testitem.save
        format.html { redirect_to @testitem, notice: 'Testitem was successfully created.' }
        format.json { render :show, status: :created, location: @testitem }
      else
        format.html { render :new }
        format.json { render json: @testitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testitems/1
  # PATCH/PUT /testitems/1.json
  def update
    respond_to do |format|
      if @testitem.update(testitem_params)
        format.html { redirect_to @testitem, notice: 'Testitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @testitem }
      else
        format.html { render :edit }
        format.json { render json: @testitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testitems/1
  # DELETE /testitems/1.json
  def destroy
    @testitem.destroy
    respond_to do |format|
      format.html { redirect_to testitems_url, notice: 'Testitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testitem
      @testitem = Testitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testitem_params
      params.require(:testitem).permit(:name, :description)
    end
end

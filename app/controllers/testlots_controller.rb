class TestlotsController < ApplicationController
  before_action :set_testlot, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :show]

  # GET /testlots
  # GET /testlots.json
  def index
    @testlots = Testlot.all
  end

  # GET /testlots/1
  # GET /testlots/1.json
  def show
    @testphotos = @testlot.testphotos
  end

  # GET /testlots/new
  def new
    @testlot = current_user.testlots.build
  end

  # GET /testlots/1/edit
  def edit
  end

  # POST /testlots
  # POST /testlots.json
  def create
    @testlot = current_user.testlots.build(testlot_params)

    respond_to do |format|
      if @testlot.save
        if params[:images]
          #===== The magic is here ;)
          params[:images].each { |image|
            @testlot.testphotos.create(image: image)
          }
        end

        format.html { redirect_to @testlot, notice: 'Testlot was successfully created.' }
        format.json { render :show, status: :created, location: @testlot }
      else
        format.html { render :new }
        format.json { render json: @testlot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testlots/1
  # PATCH/PUT /testlots/1.json
  def update
    respond_to do |format|
      if @testlot.update(testlot_params)
        format.html { redirect_to @testlot, notice: 'Testlot was successfully updated.' }
        format.json { render :show, status: :ok, location: @testlot }
      else
        format.html { render :edit }
        format.json { render json: @testlot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testlots/1
  # DELETE /testlots/1.json
  def destroy
    @testlot.destroy
    respond_to do |format|
      format.html { redirect_to testlots_url, notice: 'Testlot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testlot
      @testlot = Testlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testlot_params
      params.require(:testlot).permit(:name, :description, :status, :image)
    end
end

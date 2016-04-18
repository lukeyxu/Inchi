class ClassfiedsController < ApplicationController
  before_action :set_classfied, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :admin, :show]

  # GET /classfieds
  # GET /classfieds.json
  def index
    @classfieds = Classfied.all
  end

  def admin
    @classfieds = Classfied.all
  end

  # GET /classfieds/1
  # GET /classfieds/1.json
  def show
  end

  # GET /classfieds/new
  def new
    @classfied = current_user.classfieds.build
  end

  # GET /classfieds/1/edit
  def edit
  end

  # POST /classfieds
  # POST /classfieds.json
  def create
    @classfied =current_user.classfieds.build(classfied_params)

    respond_to do |format|
      if @classfied.save
        format.html { redirect_to @classfied, notice: 'Classfied was successfully created.' }
        format.json { render :show, status: :created, location: @classfied }
      else
        format.html { render :new }
        format.json { render json: @classfied.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classfieds/1
  # PATCH/PUT /classfieds/1.json
  def update
    respond_to do |format|
      if @classfied.update(classfied_params)
        format.html { redirect_to @classfied, notice: 'Classfied was successfully updated.' }
        format.json { render :show, status: :ok, location: @classfied }
      else
        format.html { render :edit }
        format.json { render json: @classfied.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classfieds/1
  # DELETE /classfieds/1.json
  def destroy
    @classfied.destroy
    respond_to do |format|
      format.html { redirect_to classfieds_url, notice: 'Classfied was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classfied
      @classfied = Classfied.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classfied_params
      params.require(:classfied).permit(:title, :description, :category, :phone, :email, :wechat)
    end
end

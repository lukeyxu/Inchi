class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]
  before_action :belong_to, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :show]

  # GET /apartments
  # GET /apartments.json
  def index
    @apartments = Apartment.all
  end

  # GET /apartments/1
  # GET /apartments/1.json
  def show
    @first3 = @apartment.apart_photos.first(3)
    @second2 = @apartment.apart_photos.offset(3).limit(2)
    @third3 = @apartment.apart_photos.offset(5).limit(3)
  end

  # GET /apartments/new
  def new
    @apartment = current_user.apartments.build
  end

  # GET /apartments/1/edit
  def edit
    @photos = @apartment.apart_photos
  end

  # POST /apartments
  # POST /apartments.json
  def create
    @apartment = current_user.apartments.build(apartment_params)

    respond_to do |format|
      if @apartment.save
        if params[:images]

          params[:images].each { |image|
            @apartment.apart_photos.create(image: image)
          }
        end
        format.html { redirect_to @apartment, notice: 'apartment was successfully created.' }
        format.json { render :show, status: :created, location: @apartment }
      else
        format.html { render :new }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartments/1
  # PATCH/PUT /apartments/1.json
  def update
    respond_to do |format|
      if @apartment.update(apartment_params)
        format.html { redirect_to @apartment, notice: 'Apartment was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartment }
      else
        format.html { render :edit }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartments/1
  # DELETE /apartments/1.json
  def destroy
    @apartment.destroy
    respond_to do |format|
      format.html { redirect_to apartments_url, notice: 'Apartment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def admin
    @apartments = Apartment.all;
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end

    def belong_to
      @apartment = Apartment.find(params[:id])
      if user_signed_in?
        if current_user.id !=  @apartment.user_id
          flash[:error] = "This apartment listing does not belong to you."
          redirect_to  action: 'index'# halts request cycle
        end
      else
        flash[:error] = "You must be logged in to access this section."
        redirect_to  action: 'index'# halts request cycle
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartment_params
      params.require(:apartment).permit(:title, :description, :contactemail,
        :contactqq, :contactwechat, :contactphone, :pet, :bedroomamount, :rent,
        :address, :lookforroomate, :subleasing, :bedroomtype, :contact, :image)
    end
end

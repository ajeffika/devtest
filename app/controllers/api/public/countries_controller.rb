class Api::Public::CountriesController < Api::BaseController
  before_action :set_country, only: [:show, :update, :destroy]

  # GET /articles

  def index
    @countries = Country.all
    render json: @countries
  end

  # GET /articles/1
  def show
    render json: @country
  end

  # POST /articles

  def create
    @country = Country.new(country_params)
    if @country.save
      render json: @country, status: :created, location: api_v1_country_url(@country)
    else
      render json: @country.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1

  def update
    if @country.update(country_params)
      render json: @country
    else
      render json: @country.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    @country.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_country
    @country = Country.find(params[:id])
  end
  # Only allow a trusted parameter “white list” through.
  def country_params
    params.require(:target_group).permit(:country_code)
  end
end

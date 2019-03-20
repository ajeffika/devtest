class Api::Public::LocationsController <  Api::BaseController

  def index
    @locations = Location.all
    render json: @locations
  end

  def show
    render json: @location
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      render json: @location, status: :created, location: api_v1_location_url(@location)
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  def update
    if @location.update(location_params)
      render json: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @location.destroy
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :secret_code)
  end
end

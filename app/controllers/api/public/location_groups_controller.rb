class Api::Public::LocationGroupsController < Api::BaseController

  def index
    @location_groups = LocationGroup.all
    render json: @location_groups
  end

  def show
    render json: @location_group
  end

  def create
    @location_group = LocationGroup.new(location_group_params)
    if @location_group.save
      render json: @location_group, status: :created, location: api_v1_location_group_url(@location)
    else
      render json: @location_group.errors, status: :unprocessable_entity
    end
  end

  def update
    if @location_group.update(location_group_params)
      render json: @location_group
    else
      render json: @location_group.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @location_group.destroy
  end

  private

  def set_location_group
    @location_group = LocationGroup.find(params[:id])
  end

  def location_group_params
    params.require(:location_group).permit(:name)
  end
end

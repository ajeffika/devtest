class Api::Public::LocationsController < Api::Public::BaseController

  def index
    locations = LocationsForCountryQuery.new(params[:country_code]).fetch

    render json: locations
  end
end

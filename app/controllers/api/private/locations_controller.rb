class Api::Public::LocationsController <  Api::BaseController

  desc "Return locations by provided country code"
  params do
    requires :country_code, type: String
  end
  get do
    GetLocationByCountryCodeQuery.new(country_code: params[:country_code]).call
  end
end

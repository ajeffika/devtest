class Api::Public::TargetGroupsController < Api::BaseController
  desc "Return target_groups by provided country code"
  params do
    requires :country_code, type: String
  end
  get do
    GetTargetGroupByCountryCodeQuery.new(country_code: params[:country_code]).call
  end
end

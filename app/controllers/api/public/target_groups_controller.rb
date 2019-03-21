class Api::Public::TargetGroupsController < Api::Public::BaseController

  def index
    target_groups = TargetGroupsForCountryQuery.new(params[:country_code]).fetch

    render json: target_groups
  end
end

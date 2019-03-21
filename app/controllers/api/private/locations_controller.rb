class Api::Private::TargetGroupsController < Api::Private::BaseController

  def index
    target_groups = TargetGroupsForCountryQuery.new(params[:country_code]).fetch

    render json: target_groups
  end
end

class Api::Public::TargetGroupsController < Api::BaseController

  def index
    @target_groups = TargetGroup.all
    render json: @target_groups
  end

  # GET /articles/1
  def show
    render json: @target_group
  end

  # POST /articles

  def create
    @target_group = TargetGroup.new(target_group_params)
    if @target_group.save
      render json: @target_group, status: :created, location: api_v1_target_group_url(@target_group)
    else
      render json: @target_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1

  def update
    if @target_group.update(target_group_params)
      render json: @target_group
    else
      render json: @target_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    @target_group.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_target_group
    @target_group = TargetGroup.find(params[:id])
  end

  def target_group_params
    params.require(:target_group).permit(:name, :secret_code)
  end
end

Rails.application.routes.draw do

  api_version(module: "api::Public", path: {value: "api/public"}, defaults: {format: "json"}) do
    get 'locations/:country_code' => 'locations#index'
    get 'target_groups/:country_code' => 'target_groups#index'
  end

  api_version(module: "api::Private", path: {value: "api/private"}, defaults: {format: "json"}) do
    get 'locations/:country_code' => 'locations#index'
    get 'target_groups/:country_code' => 'target_groups#index'
    post 'evaluate_target' => 'evaluate_target#create'
  end

end

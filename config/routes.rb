Rails.application.routes.draw do
  root 'application#index'
  
  scope 'api' do
    resources :travels
  end
end

Rails.application.routes.draw do
  devise_for :users
  scope "/:locale" do
    resources :books
  end
end

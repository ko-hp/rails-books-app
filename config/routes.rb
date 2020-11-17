Rails.application.routes.draw do
  get '/:locale' => 'books#index'
  root to: 'books#index'
  devise_for :users
  scope "/:locale" do
    resources :books
  end
end

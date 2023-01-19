Rails.application.routes.draw do
  get 'blogs' => 'blog#index'
  # root "articles#index"
end

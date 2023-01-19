Rails.application.routes.draw do
  get 'blogs' => 'blog#index', as: 'blogs'
  get 'blogs/:id' => 'blog#show', as: 'blog'

  # root "articles#index"
end

Rails.application.routes.draw do
  get 'blogs' => 'blog#index', as: 'blogs'
  get 'blogs/new' => 'blog#new', as: 'add_blog'
  get 'blogs/:id' => 'blog#show', as: 'blog'
  post 'blogs' => 'blog#create'
  get 'blogs/:id/edit' => 'blog#edit', as: 'edit_blog'
  patch 'blogs/:id' => 'blog#update'
  delete 'blogs/:id' => 'blog#destroy', as: 'delete_blog'

  # root "articles#index"
end

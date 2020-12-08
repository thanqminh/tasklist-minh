Rails.application.routes.draw do
  root 'welcome#index'
  resources :task_lists do
    resources :todos
    get 'share' => 'share_tasks#index'
    post 'share' => 'share_tasks#create'
    put 'share/:user_id' => 'share_tasks#update'
    delete 'share/:user_id' => 'share_tasks#destroy'
  end
  get 'shared' => 'task_lists#shared'
  get 'search/:name' => 'todos#search'
  get 'users' => 'users#index'
  get 'profile' => 'users#profile'
  match 'auth' => 'users#update', :via => [:patch,:put]
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

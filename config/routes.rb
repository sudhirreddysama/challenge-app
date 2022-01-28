Rails.application.routes.draw do
  root 'task_lists#index'

  resources :task_lists, except: :show do
    resources :tasks, except: :show
  end
end

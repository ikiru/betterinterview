Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'homes#index'

  get 'dashboards/index'

  devise_for :users, controllers: {registrations: "devise/registrations"}

  resources :reports
  resources :interviews
  resources :postions
  resources :project_catagories
  resources :interview_questions
  resources :question_catagories
  resources :interview_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :interviews
  resources :postions
  resources :project_catagories
  resources :interview_questions
  resources :question_catagories
  resources :interview_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

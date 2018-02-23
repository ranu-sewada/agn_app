Rails.application.routes.draw do


  # devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'

  resources :employee

   root 'employee#home'
   # root 'application#hello'
   get 'employee/index'
   # get 'employee_pages/jobcreate'

   resources :job
   get 'job/create'



end

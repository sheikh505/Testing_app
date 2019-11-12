Rails.application.routes.draw do
  resources :articles
  resources :appointments
  resources :patients
  resources :phycisions
  resources :books




  resources :users do
    collection do

      get :user_form_tag
     post :user_age_list


    end
  end



  resources :clients




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

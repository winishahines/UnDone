Rails.application.routes.draw do
  get 'welcome/index'
  root "welcome#index"
  resource :session

   resources :users do
    resources :tasks do
      member do
        patch :complete
        # Nice!
      end
    end
   end

end

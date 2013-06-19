Catfacts::Application.routes.draw do  root :to => 'facts#new'
  resources :facts do
    collection do
      post :deliver
    end
  end
end

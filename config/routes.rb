Rails.application.routes.draw do
  resources :perguntas_assessjur2s
  resources :perguntas_assessjurs
  root to: "perguntas_assessjurs#index"
  get "novp/:id", to: 'perguntas_assessjurs#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

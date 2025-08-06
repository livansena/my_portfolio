Rails.application.routes.draw do
  resources :projects

  root "pages#home"

  # Rotas para as páginas estáticas
  get "sobre-mim", to: "pages#about"
  get "projetos", to: "pages#projects"
  get "habilidades", to: "pages#skills"
  get "achievements", to: "pages#achievements", as: :achievements
  get "contato", to: "pages#contact"

  get "up" => "rails/health#show", as: :rails_health_check

  end
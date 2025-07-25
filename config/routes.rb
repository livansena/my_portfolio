Rails.application.routes.draw do
  resources :projects
  # Define a rota raiz ("/") para a página inicial
  root "pages#home"

  # Rotas para suas páginas estáticas
  get "sobre-mim", to: "pages#about"
  get "projetos", to: "pages#projects"
  get "habilidades", to: "pages#skills"
  get "contato", to: "pages#contact"

  # A linha abaixo é padrão do Rails e pode ser mantida
  get "up" => "rails/health#show", as: :rails_health_check

  end
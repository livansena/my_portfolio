# config/importmap.rb
pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true

# Pinar explicitamente cada controlador Stimulus
pin "controllers", to: "controllers/index.js", preload: true # Ponto de entrada para a pasta controllers
pin "controllers/show_more_cards_controller", to: "controllers/show_more_cards_controller.js", preload: true
pin "controllers/mobile_menu_controller", to: "controllers/mobile_menu_controller.js", preload: true
pin "controllers/hello_controller", to: "controllers/hello_controller.js", preload: true # Se você tem hello_controller, mantenha
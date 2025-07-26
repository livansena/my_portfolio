import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Importar e registrar cada controlador explicitamente (sem usar globs ou require.context)
import ShowMoreCardsController from "controllers/show_more_cards_controller" // Note: sem "./" aqui
application.register("show-more-cards", ShowMoreCardsController)

import MobileMenuController from "controllers/mobile_menu_controller" // Note: sem "./" aqui
application.register("mobile-menu", MobileMenuController)

// Se você tem hello_controller.js:
import HelloController from "controllers/hello_controller" // Note: sem "./" aqui
application.register("hello", HelloController)
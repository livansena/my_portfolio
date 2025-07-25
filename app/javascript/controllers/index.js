import { Application } from "@hotwired/stimulus"

const application = Application.start()

import ShowMoreCardsController from "./show_more_cards_controller"
application.register("show-more-cards", ShowMoreCardsController)

import MobileMenuController from "./mobile_menu_controller"
application.register("mobile-menu", MobileMenuController)
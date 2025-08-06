import { Application } from "@hotwired/stimulus"

const application = Application.start()

import ShowMoreCardsController from "controllers/show_more_cards_controller"
application.register("show-more-cards", ShowMoreCardsController)

import HelloController from "controllers/hello_controller"
application.register("hello", HelloController)
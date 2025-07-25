import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button", "menu"] 

  connect() {
    console.log("MobileMenu controller conectado!")
  }

  toggle() {
    console.log("Botão hambúrguer clicado! Estado atual do menu:", this.menuTarget.classList.contains("is-open"))
    this.menuTarget.classList.toggle("is-open") 
  
  }
}
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["grid", "moreButton", "minimizeButton"];

  connect() {
    console.log("ShowMoreCards controller conectado!");
    this.currentCardCount = 3;
    this.maxCards = 9;
    this.minCards = 3;
    this.updateButtonVisibility();
  }

  addCards() {
    console.log("Botão 'Ver mais' clicado!");
    const grid = this.gridTarget;

    for (let i = 0; i < 3; i++) {
      const newCard = document.createElement("div");
      newCard.className = "project-card coming-soon";
      newCard.innerHTML = "<span>EM BREVE</span>";
      grid.appendChild(newCard);
    }
    this.currentCardCount += 3;
    this.updateButtonVisibility();
  }

  removeCards() {
    console.log("Botão 'Ver menos' clicado!");
    const grid = this.gridTarget;

    for (let i = 0; i < 3; i++) {
      if (grid.lastElementChild) {
        grid.removeChild(grid.lastElementChild);
      }
    }
    this.currentCardCount -= 3;
    this.updateButtonVisibility();
  }

  updateButtonVisibility() {
  if (this.currentCardCount === this.minCards) { 
    this.moreButtonTarget.style.display = "block";
    this.minimizeButtonTarget.style.display = "none";
  } else if (
    this.currentCardCount > this.minCards &&
    this.currentCardCount < this.maxCards
  ) { 
    this.moreButtonTarget.style.display = "block";
    this.minimizeButtonTarget.style.display = "block";
    this.minimizeButtonTarget.innerText = "Ver menos"; 
  } else if (this.currentCardCount === this.maxCards) { 
    this.moreButtonTarget.style.display = "none";
    this.minimizeButtonTarget.style.display = "block";
    this.minimizeButtonTarget.innerText = "Ver menos"; 
  }
}
}
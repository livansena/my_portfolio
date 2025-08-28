import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["grid", "moreButton", "minimizeButton"];

  connect() {
    this.currentCardCount = 3;
    this.allCards = this.gridTarget.querySelectorAll(".project-card");
    this.updateCardVisibility();
    this.updateButtonVisibility();
  }

  showMore() {
    this.currentCardCount += 3;
    this.updateCardVisibility();
    this.updateButtonVisibility();
  }

  showLess() {
    this.currentCardCount -= 3;
    this.updateCardVisibility();
    this.updateButtonVisibility();
  }

  updateCardVisibility() {
    this.allCards.forEach((card, index) => {
      if (index < this.currentCardCount) {
        card.style.display = "block";
      } else {
        card.style.display = "none";
      }
    });
  }

  updateButtonVisibility() {
    if (this.currentCardCount >= this.allCards.length) {
      this.moreButtonTarget.style.display = "none";
      this.minimizeButtonTarget.style.display = "block";
    } else {
      this.moreButtonTarget.style.display = "block";
    }

    if (this.currentCardCount <= 3) {
      this.minimizeButtonTarget.style.display = "none";
    } else {
      this.minimizeButtonTarget.style.display = "block";
    }
  }
}
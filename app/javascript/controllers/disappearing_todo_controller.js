import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static values = {
    turboFrameId: String
  }

  hide() {
    // find the turbo frame with the id and remove it
    const turboFrame = document.getElementById(this.turboFrameIdValue);
    turboFrame.remove();
  }

  connect() {
    // First, set the transition for opacity to one second
    this.element.style.transition = "opacity 1s ease";

    // Then, wait 1 seconds and fade out by setting opacity to 0
    // and then removing the element from the DOM
    setTimeout(() => {
      this.element.style.opacity = "0";
      setTimeout(() => {
        this.hide();
      }, 1000);
    }, 1000);
  }
}

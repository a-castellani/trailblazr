import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["button", "form"]


  toggle() {
    const errorMessageElement = this.formTarget.querySelector(".invalid-feedback");

    if (errorMessageElement) {
      this.formTarget.classList.remove("d-none");
    } else {
      this.formTarget.classList.toggle("d-none");
    }
  }
}

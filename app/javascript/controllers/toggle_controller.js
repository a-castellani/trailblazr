import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["button", "form"]

  toggle() {
    this.formTarget.classList.toggle("d-none")
  }
}

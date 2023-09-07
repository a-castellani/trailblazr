import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-itinerary-toggle"
export default class extends Controller {
  static targets = ["button", "form"]
  connect() {
    console.log("Hello from toggle controller")
  }

  toggle() {
    this.formTarget.classList.toggle("d-none")
  }
}

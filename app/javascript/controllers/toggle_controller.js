import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["button", "form"]
  connect() {
    // console.log("Hello from toggle controller")
    // console.log(this.buttonTarget)
    // console.log(this.formTarget)
  }

  toggle() {
    this.formTarget.classList.toggle("d-none")
  }
}

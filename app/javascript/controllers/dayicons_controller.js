import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dayicons"
export default class extends Controller {
  static targets = ["icons"]

  connect() {
    // console.log("hello day")
  }

  display() {
    // console.log("icons")
    // console.log(this.iconsTarget)
    this.iconsTarget.classList.toggle("d-none");
  }
}

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reviewform"
export default class extends Controller {
  static targets = ["reviewbox"]
  connect() {
    // console.log("hello from reviews controller")
  }

  fire() {
    // console.log(this.reviewboxTarget)
    this.reviewboxTarget.classList.toggle("d-none");
  }
}

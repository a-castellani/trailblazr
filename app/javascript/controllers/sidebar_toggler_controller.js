import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sidebar-toggler"
export default class extends Controller {
  static targets = ["sidebar", "body"]
  connect() {
    // console.log("Hello from the_other_side_controller.js")
    // console.log(this.sidebarTarget)
  }
  fire() {
    // console.log("Hiya");
    this.sidebarTarget.classList.toggle("d-none");
    this.bodyTarget.classList.toggle("col-12")
  }
}

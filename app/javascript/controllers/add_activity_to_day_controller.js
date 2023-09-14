import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-activity-to-day"
export default class extends Controller {
  static targets = ["form"]

  connect() {
    // console.log('add activity to day connected')
  }

  displayForm() {
    // console.log('display form called')
    this.formTarget.classList.toggle("d-none")
  }
}

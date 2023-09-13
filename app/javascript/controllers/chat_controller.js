import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chat"
export default class extends Controller {
  static targets = ["chatbox", "header", "arrow"]

  show() {
    this.headerTarget.classList.replace("closed", "open")
    this.chatboxTarget.classList.remove("d-none")
    this.arrowTarget.classList.remove("d-none")
  }

  hide(event) {
    event.stopImmediatePropagation()
    this.headerTarget.classList.remove("open")
    this.headerTarget.classList.add("closed")
    this.chatboxTarget.classList.add("d-none")
    this.arrowTarget.classList.add("d-none")
  }
}

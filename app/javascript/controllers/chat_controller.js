import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chat"
export default class extends Controller {
  static targets = ["chatbox", "icon"]

  connect() {
    console.log("hello from chat")
    console.log(this.chatboxTarget)
    console.log(this.iconTarget)
  }

  show() {
    this.chatboxTarget.classList.remove("d-none")
    this.iconTarget.classList.add("d-none")
  }

  hide(event) {
    event.stopImmediatePropagation()
    this.chatboxTarget.classList.add("d-none")
    this.iconTarget.classList.remove("d-none")
  }
}

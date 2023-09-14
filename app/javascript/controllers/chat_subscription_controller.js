import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chat-subscription"
export default class extends Controller {
  static targets= ["messages"]
  static values = {
    itinerary: Number
  }

  connect() {
    // console.log("hello")
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatChannel", id: this.itineraryValue },
      { received: data => this.#insertMessageAndScrollDown(data)}
    )
  }

  #insertMessageAndScrollDown(data) {
    // console.log("scrolling...")
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, bottom)
  }

  resetForm(event) {
    event.target.reset()
  }
}

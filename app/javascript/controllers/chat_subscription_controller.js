import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chat-subscription"
export default class extends Controller {
  static targets= ["messages"]
  static values = {
    itinerary: Number
  }

  connect() {
    console.log("hello")
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatChannel", id: this.itineraryValue },
      { received: data => this.messagesTarget.insertAdjacentHTML("beforeend", data)}
    )
    console.log(`Subscribed to chat in itinerary ID: ${this.itineraryValue}`)
  }
}

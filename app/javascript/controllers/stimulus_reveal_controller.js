import { Controller } from "@hotwired/stimulus"
import { Application } from '@hotwired/stimulus'
import Reveal from 'stimulus-reveal-controller'

const application = Application.start()
application.register('reveal', Reveal)
// Connects to data-controller="stimulus-reveal"
export default class extends Controller {
  connect() {
  }
}

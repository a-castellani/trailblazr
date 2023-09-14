import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="parallax"
export default class extends Controller {
  static targets = ["text", "leaf", "hill1", "hill4", "hill5"]

  initialize() {
    this.handleScroll = this.handleScroll.bind(this)
  }

  connect() {
    window.addEventListener("scroll", this.handleScroll);
  }

  handleScroll() {
  console.log("scrollin' la vida loca");
  console.log(window.scrollY);
    const value = window.scrollY;


if (value <= 360) {
    this.textTarget.style.marginTop = value * 2.5 + "px";
    this.leafTarget.style.top = value * -1.5 + "px";
    this.leafTarget.style.left = value * 1.5 + "px";
    this.hill5Target.style.left = value * 1.5 + "px";
    this.hill4Target.style.left = value * -1.5 + "px";
    this.hill1Target.style.top = value * 1.5 + "px";
  }
}
}

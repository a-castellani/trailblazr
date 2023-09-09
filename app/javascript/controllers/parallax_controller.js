import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="parallax"
export default class extends Controller {
  static targets = ["text", "leaf", "hill1", "hill4", "hill5"]

  connect() {
    // console.log("hello hello");
    // console.log(this.hill4Target);

    window.addEventListener("scroll", this.scroll);
  }

  disconnect() {
    window.removeEventListener("scroll", this.scroll);
  }

  scroll() {
  console.log("scrollin' la vida loca");
    // const value = window.scrollY;
    // console.log(this.value);
    console.log(this.textTarget);

    this.textTarget.style.marginTop = value * 2.5 + "px";
    this.leafTarget.style.top = value * -1.5 + "px";
    this.leafTarget.style.left = value * 1.5 + "px";
    this.hill5Target.style.left = value * 1.5 + "px";
    this.hill4Target.style.left = value * -1.5 + "px";
    this.hill1Target.style.top = value * 1.5 + "px";
  }
}

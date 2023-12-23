import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element);
  }

  remove() {
    this.element.remove();
  }
}

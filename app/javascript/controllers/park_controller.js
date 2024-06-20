import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["entrance"]

  pass(event) {
    for (const child of event.target.parentElement.children) {
      child.classList.remove("selected")
    }
    event.target.classList.toggle("selected")
    this.entranceTarget.value = event.target.innerHTML
  }
}

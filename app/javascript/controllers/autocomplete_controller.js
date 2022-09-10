import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autocomplete"
export default class extends Controller {
  static targets = ["form", "input", "list"]
  connect() {
    console.log(this.formTarget)
    console.log(this.inputTarget)
    console.log(this.listTarget)
  }

  update(event){
    event.preventDefault()
    const url = `/?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.listTarget.innerHTML = data
    })
  }

  select(event){
    this.inputTarget.value = event.currentTarget.innerHTML
    this.listTarget.innerHTML = ""
  }
}

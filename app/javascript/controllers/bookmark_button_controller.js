import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookmark-button"
export default class extends Controller {
  static values = { activityId: Number, userId: Number}
  static targets = ["button"]
  connect() {
    console.log("Test")
  }

  send(event){
    event.preventDefault()
    fetch(this.buttonTarget.url,{
      method: "POST",
      headers: { "Accept": "application/json" },
      body: {
        activity_id: this.activityIdValue,
        user_id: this.userIdValue,
      }
    }).then(reponse => console.log(response));
  }
}

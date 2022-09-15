import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookmark-button"
export default class extends Controller {
  static values = { activityId: Number, currentPath: String }
  static targets = ["button"]
  send(event){
    event.preventDefault();

    let csrfToken = document
      .querySelector('meta[name="csrf-token"]')
      .getAttribute("content");

    fetch("/wishlists", {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
        "X-CSRF-Token": csrfToken,
      },
      body: JSON.stringify({
        activity_id: this.activityIdValue,
      }),
    })
    .then((response) => response.json())
    .then((data) => {
      if (data.wishlist) {
        this.buttonTarget.classList.remove("fa-regular");
        this.buttonTarget.classList.add("fa-solid");
      } else {
        this.buttonTarget.classList.remove("fa-solid");
        this.buttonTarget.classList.add("fa-regular");
        if (this.currentPathValue === "/wishlists") {
          document
            .querySelector(`#activity-${this.activityIdValue}`)
            .remove();
        }
      }
    });
  }
}

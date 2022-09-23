// Entry point for the build script in your package.json
// import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import { Turbo } from "@hotwired/turbo-rails";

Turbo.setConfirmMethod((message, element) => {
  const dialogButton = document.getElementById("turbo-confirm-button");
  dialogButton.click();
  const dialog = document.getElementById("turbo-confirm");
  dialog.querySelector(".modal-title").textContent = message;

  return new Promise((resolve) => {
    dialog.querySelectorAll(".btn").forEach((button) => {
      button.addEventListener(
        "click",
        (event) => {
          const button = event.currentTarget;
          resolve(button.textContent === "Confirm");
        },
        { once: true },
      );
    });
  });
});

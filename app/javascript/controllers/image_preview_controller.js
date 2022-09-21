import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="image-preview"
export default class extends Controller {
  static targets = ["output", "input"];

  readURL() {
    console.log("code here");
    var input = this.inputTarget;
    var output = this.outputTarget;

    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function () {
        output.src = reader.result;
      };
      reader.readAsDataURL(input.files[0]);
    }
  }

  uploadFile() {
    this.inputTarget.click();
  }
}

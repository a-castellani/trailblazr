import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sweet-alert"
export default class extends Controller {
static targets = ["delete"]

  connect() {
    console.log('sweet alert connected')
  }

  fireAlert() {
    Swal.fire({
      background: '#f3e9dc',
      toast: true,
      title: 'Are you sure?',
      text: "You won't be able to revert this!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#5e3023',
      cancelButtonColor: '#447A9E',
      confirmButtonText: 'Delete',
  })
    .then((result) => {
      if (result.isConfirmed) {
        console.log(this.deleteTarget)
        this.deleteTarget.click()
      }
    })
    .catch(event.preventDefault())
}

}

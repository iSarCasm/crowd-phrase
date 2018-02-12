document.addEventListener("DOMContentLoaded", function() {
  document.getElementById('new_phrase').addEventListener("click", function(event) {
    event.target.value = 'Loading new phrase...';
  })

  document.getElementById('clear_phrases').addEventListener("click", function(event) {
    event.target.value = 'Clearing all phrases...';
  })
});

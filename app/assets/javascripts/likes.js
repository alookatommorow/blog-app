$(document).ready(function() {

  $(".like-form").submit(function(event) {
    event.preventDefault();
    $.ajax({
      url: this.action,
      method: this.method,
      data: $(this).serialize(),
    })
    .done(function() {
      console.log("fuck ya");
    })
    .fail(function() {
      console.log("bitch ass");
    })
  })
});

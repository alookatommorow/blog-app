$(document).ready(function() {

  $(".like-form-container").on("submit", ".like-form", function(event) {
    event.preventDefault();
    $.ajax({
      url: this.action,
      method: this.method,
      data: $(this).serialize(),
    })
    .done(renderLikes.bind(this) )
    .fail(function() {
      console.log("bitch ass");
    })
  });

  function renderLikes(response) {
    var $container =  $(this).data("ajax-update");
    $(this).closest("[data-button-container]").html(response.button);
    $($container).html(response.likes);
  }
});

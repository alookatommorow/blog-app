$(document).ready(function() {
  $(".reviews-container").on("submit", ".review-form", function(event) {
    event.preventDefault();
    var url = this.action;
    var data = $(this).serialize();
    var callback = renderResponse.bind(this);

    $.post(url, data, callback);
  });

  function renderResponse(response) {
    var $container = $(this).data("replace-container");
    $($container).html(response);
  }
});
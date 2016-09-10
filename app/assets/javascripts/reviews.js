$(document).ready(function() {
  $("[data-ajax-replace]").on("submit", "[data-ajax-submit]", function(event) {
    event.preventDefault();
    var url = this.action;
    var data = $(this).serialize();
    var callback = renderResponse.bind(this);

    $.post(url, data, callback);
  });

  function renderResponse(response) {
    var container = $(this).data("ajax-submit");
    $("[data-ajax-replace="+container+"]").html(response);
  }
});
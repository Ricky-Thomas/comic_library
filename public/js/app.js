$(document).ready(function(){
  $('.volume_show_img').on("click", function(){
    var volumeId = this.dataset.volumeId
    $.get("/volume/id/" + volumeId)
  });
});

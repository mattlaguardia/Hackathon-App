$(document).ready(function(){
  $(".vote_btn_up").click(function(event){
    event.preventDefault();
    $target = $(event.target);
    $target.attr("disabled", "true");
    $form = $target.parent();

    $.ajax({
      type: $form.attr('method'),
      url: $form.attr('action'),
      dataType: "JSON"
    }).done(function(res){
      console.log("Whoot Whoot");
      console.log(res);
      console.log(res.points);
      $form.parent().children('.points').html(res.points);
    });
  });

  $(".vote_btn_down").click(function(event){
    event.preventDefault();
    $target = $(event.target);
    $target.attr("disabled", "true");
    $form = $target.parent();

    $.ajax({
      type: $form.attr('method'),
      url: $form.attr('action'),
      dataType: "JSON"
    }).done(function(res){
      $form.parents().children('.points').html(res.points);
    });
  });

})

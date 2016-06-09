

$(document).ready(function(){
  $(".vote_btn").click(function(event){
    // WORKS !! //
    event.preventDefault();
    // works like this //
    $target = $(event.target);
    $target.attr("disabled", "true");
  });
})
console.log("sanity checkz");

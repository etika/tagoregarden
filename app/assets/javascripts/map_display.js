  $(document).on('click', '.show_reviews', function(){
    $.ajax({
      url: "/reviews/show?entry_id="+$(this).data("entry"),
      type: "GET",
    })
  });
  $(document).on('click', '.add_rating', function(){
   var rating = $( ".add_rating input[name='score']" ).val();
   $("#review_rating").attr("value",rating);
  });
  $(document).on('click', '.add_review', function(){
     var entry_id =$(this).data("entry");
     $("#review_entry_id").attr("value",entry_id)
  });

$(document).on('click','.log_in ,.sign_up',function(){
    $("#myModal").modal('hide')

 });

  $('.fixed').raty({
  readOnly:  true,
  score:  function() {
            return $(this).attr('data-score')
        },
  path:  '/assets/'

});
  $('.add_rating').raty({
  score: function() {
    return $(this).attr('data-rating');
  },
    path:  '/assets/'
});


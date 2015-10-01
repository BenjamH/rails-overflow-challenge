var createPost = function(){
  // if listening for a click put listener on the button itself. if listening for a submit, put listener on the form
  $('#sidebar').on('click', 'input[name=submit]', function(e){
    e.preventDefault();
    console.log('click');
    var $form = $(this).parent(),
        data = $form.serialize(),
        path = $form.attr('action'),
        config = {url: path,
                  data: data,
                  dataType: 'html',
                  method: 'POST'},
        request = $.ajax(config)

    request.done(function(response){
      // any easier way to clear all the text from a form???
      var $post = $('#posts'),
          $formText = $('form input[type=text]')
          $formTextArea = $('form textarea')
      $post.append(response);
      $formText.val("");
      $formTextArea.val("");
    })
    request.fail(function(response){
    })
  })
}

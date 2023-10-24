/***** Modal ******/ 
/***** Modal - chat ******/ 
$(document).ready(function () {
  $('.chat-thumb').click(function () {
    $('#modal-chat').css('display', 'flex');
  });   
 
  $('#modalClose-chat').click(function () {
    $('#modal-chat').css('display', 'none');
  });
}); 
/***** Modal - chat ******/ 

/***** Modal - email ******/ 
$(document).ready(function () {
  $('.email-thumb').click(function () {
    $('#modal-email').css('display', 'flex');
    });   
   
    $('#modalClose-email').click(function () {
      $('#modal-email').css('display', 'none');
    });
  });  
  /***** Modal - email ******/ 


  /***** Modal - Login ******/ 
  $(document).ready(function () {
    $('.Sh-Login-thumb').click(function () {
      $('#modal-login').css('display', 'flex');
    });   
    
    $('#modalClose-login').click(function () {
      $('#modal-login').css('display', 'none');
    });
  });  
  /***** Modal - Login ******/ 
  
  
  
  /***** Modal - forgotPassword ******/ 
  $(document).ready(function () {
    $('.Sh-forgot-thumb').click(function () {
      $('#modal-forgotpassword').css('display', 'flex');
    });   
    
    $('#modalClose-forgotpassword').click(function () {
      $('#modal-forgotpassword').css('display', 'none');
    });
  });  
  /***** Modal - forgotPassword ******/ 
  /***** Modal ******/ 
  
  /***** slide ******/ 
  /***** slide - comm ******/ 
  $(document).ready(function () {
    $('.Sh-slide-comm-thumb').click(function () {
      $('#Sh-slide-comm').css(
        'left', '0'
        );
    });   
    
    $('#Sh-slideClose-comm').click(function () {
      $('#Sh-slide-comm').css(
        'left', '100%'
        );
    });
  });  
  /***** slide - comm ******/ 


  /***** slide - profile ******/ 
  $(document).ready(function () {
    $('.Sh-slide-profile-thumb').click(function () {
      $('#Sh-slide-profile').css(
        'left', '0'
        );
    });   
    
    $('#sh-slideClose-profile').click(function () {
      $('#Sh-slide-profile').css(
        'left', '100%'
        );
    });
  });  
  /***** slide - profile ******/ 




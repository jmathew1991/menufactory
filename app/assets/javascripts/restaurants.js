// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  function restaurantButtonCheck(){
    restaurantButton = '.restaurant-submit-button';
    restaurantName = ".required-field";
    
    $(restaurantButton).attr('disabled','disabled');
    var text = $(restaurantName).val();
    console.log(text);
    //initial check for field
    if(text!=""){
      $(restaurantButton).removeAttr('disabled');
    }
    //check after field is edited
    $(restaurantName).keyup(function(){
      text = $(restaurantName).val();
      if(text!=""){
        $(restaurantButton).removeAttr('disabled');
      }else{
        $(restaurantButton).attr('disabled','disabled');
      }
    });
  }

  restaurantButtonCheck();
});

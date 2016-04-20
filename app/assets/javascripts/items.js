function itemDescriptionWidth(itemID){
  var currentWidth = $(".item-"+itemID+"-description").css("width");
  var parentWidth = $(".item-"+itemID+"-description").parent().css("width");
  var hasImage = $(".item-"+itemID+"-picture img").attr("src");
  if(currentWidth == parentWidth && hasImage.length!=0){
    currentWidth = "80%"
  }else{
    currentWidth = "100%";
  }

  $(".item-"+itemID+"-description, .item-"+itemID+"-ingredients").css("width",currentWidth);
}

function itemNameClick(value){
  var itemID = items[value].id;
    $(".item-"+itemID+"-name").click(function(){
      $(".item-"+itemID+"-picture, .item-"+itemID+"-ingredients").toggle();
      itemDescriptionWidth(itemID);
    });
}

$(document).ready(function(){
  var numOfItems = items.length;
  for(var i=0; i<numOfItems; i++){
    itemNameClick(i);
  }
});



// app/assets/javascripts/popup.js
document.addEventListener('DOMContentLoaded', function() {
  
  // popup button for reward 
  var popupButton1 = document.getElementById('reward1');
  var popupOverlay1 = document.getElementById('popup-overlay-reward1');
  var popupButton2 = document.getElementById('reward2');
  var popupOverlay2 = document.getElementById('popup-overlay-reward2');
  
  var popupButton3 = document.getElementById('reward3');
  var popupOverlay3 = document.getElementById('popup-overlay-reward3');
  var popup1 = document.getElementById('popup1');
  var popupClose1 = document.getElementById('popup-close1');
  
  var popup2 = document.getElementById('popup2');
  var popupClose2 = document.getElementById('popup-close2');
  var popup3 = document.getElementById('popup3');
  var popupClose3 = document.getElementById('popup-close3');

  // buttons behavior functions
  popupButton1.addEventListener('click', function() {
    popupOverlay1.style.display = 'flex';
    popup1.style.display = 'block';
  });
  popupClose1.addEventListener('click', function() {
    popupOverlay1.style.display = 'none';
    popup1.style.display = 'none';
  });

  popupButton2.addEventListener('click', function() {
    popupOverlay2.style.display = 'flex';
    popup2.style.display = 'block';
  });
  popupClose2.addEventListener('click', function() {
    popupOverlay2.style.display = 'none';
    popup2.style.display = 'none';
  });

  popupButton3.addEventListener('click', function() {
    popupOverlay3.style.display = 'flex';
    popup3.style.display = 'block';
  });
  popupClose3.addEventListener('click', function() {
    popupOverlay3.style.display = 'none';
    popup3.style.display = 'none';
  });
});
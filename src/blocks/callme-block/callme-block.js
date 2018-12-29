(function(){
  var callBackBtn = document.querySelector('.page-header__contacts-callback');
  var callMePopup = document.querySelector('.callme-block');
  var closeCallMeFormBtn = document.getElementById('callme-block-close');

  var callBackBtnHandler = function (e) {
    e.preventDefault();
    //console.log('Нажали на кнопку: ' + e.target.classList);
    if (callMePopup.style = 'display:none') {
      callMePopup.classList.add('visible');
      $(callMePopup).show(300);
    }
  };

  var closeCallMeFormBtnHandler = function (e) {
      //console.log('Нажали на кнопку: ' + this.id);
      callMePopup.classList.remove('visible');
      $(callMePopup).hide(300);
  };

  if (callBackBtn) {
    callBackBtn.addEventListener('click', callBackBtnHandler);
  }

  if (closeCallMeFormBtn) {
    closeCallMeFormBtn.addEventListener('click', closeCallMeFormBtnHandler);
  }

  window.addEventListener('keydown', function(e) {
    if(e.keyCode == 27 && callMePopup.classList.contains('visible')) {
      //console.log('Нажали на кнопку: ESC');
      callMePopup.classList.remove('visible');
      $(callMePopup).hide(300);
    }
  } );
}());

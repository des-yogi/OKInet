(function(){
  //var form = document.getElementById('connection-request-form');
  var submitBtn = document.getElementById('submit-form');
  var agreementCtrl = document.getElementById('agreement');
  var agreementLbl = document.querySelector('label[for=agreement]');

  function makeChecked() {
    submitBtn.disabled = false;
    submitBtn.classList.remove('form__submit--disabled');
    agreementCtrl.setAttribute('checked', 'true');
    agreementLbl.setAttribute('aria-pressed', 'true');
  };

  function makeUnChecked() {
    submitBtn.disabled = true;
    submitBtn.classList.add('form__submit--disabled');
    agreementCtrl.removeAttribute('checked');
    agreementLbl.setAttribute('aria-pressed', 'false');
  };

  var inputChangeState = function (e) {
    if ( agreementCtrl.checked ) {
      makeChecked();
    } else {
      makeUnChecked();
    }
  };

  var handleBtnKeyPress = function (e) {
    if (e.key === " " || e.key === "Enter") {
      e.preventDefault();
      //console.log('Pressed');
      inputChangeState(e);
    }
  }

  if (agreementCtrl) {
    agreementCtrl.addEventListener('change', inputChangeState);
  }

  /*if (agreementLbl) {
    agreementLbl.addEventListener('keydown', handleBtnKeyPress);
  }*/
}());

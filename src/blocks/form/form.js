(function(){
  //var form = document.getElementById('connection-request-form');
  var submitBtn = document.getElementById('submit-form-btn');
  var agreementCtrl = document.getElementById('agreement');
  var agreementLbl = document.querySelector('label[for=agreement]');

  function makeChecked() {
    agreementCtrl.setAttribute('checked', 'true');
    submitBtn.disabled = false;
    submitBtn.classList.remove('form__submit--disabled');
    agreementLbl.setAttribute('aria-pressed', 'true');
  };

  function makeUnChecked() {
    agreementCtrl.removeAttribute('checked');
    submitBtn.disabled = true;
    submitBtn.classList.add('form__submit--disabled');
    agreementLbl.setAttribute('aria-pressed', 'false');
  };

  var inputChangeState = function (e) {
    if ( agreementCtrl.checked ) {
      makeChecked();
      //console.log('Checked');
    } else {
      makeUnChecked();
      //console.log('UnChecked');
    }
  };

  var handleBtnKeyPress = function (e) {
    if (e.key === " " || e.key === "Enter") {
      e.preventDefault();
      inputChangeState(e);
    }
  }

  if (agreementCtrl) {
    agreementCtrl.addEventListener('change', inputChangeState);
  }

  if (agreementLbl) {
    agreementLbl.addEventListener('keypress', handleBtnKeyPress);
  }
}());

(function(){
  //var form = document.getElementById('connection-request-form');
  var submitBtn = document.getElementById('submit-form-btn');
  var pageSubmitBtn = document.getElementById('page-submit-form');
  var agreementCtrl = document.getElementById('agreement');
  var pageAgreementCtrl = document.getElementById('page-agreement');
  var agreementLbl = document.querySelector('label[for=agreement]');
  var pageAgreementLbl = document.querySelector('label[for=page-agreement]');

  function makeChecked() {
    agreementCtrl.setAttribute('checked', 'true');
    submitBtn.disabled = false;
    submitBtn.classList.remove('form__submit--disabled');
  };

  function makeUnChecked() {
    agreementCtrl.removeAttribute('checked');
    submitBtn.disabled = true;
    submitBtn.classList.add('form__submit--disabled');
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

  if (pageAgreementCtrl) {
    pageAgreementCtrl.addEventListener('change', function (e) {

      if ( pageAgreementCtrl.checked ) {
        pageAgreementCtrl.setAttribute('checked', 'true');
        pageSubmitBtn.disabled = false;
        pageSubmitBtn.classList.remove('form__submit--disabled');

      } else {
        pageAgreementCtrl.removeAttribute('checked');
        pageSubmitBtn.disabled = true;
        pageSubmitBtn.classList.add('form__submit--disabled');
      }
    });
  }

  /*if (agreementLbl) {
    agreementLbl.addEventListener('keypress', handleBtnKeyPress);
  }*/
}());

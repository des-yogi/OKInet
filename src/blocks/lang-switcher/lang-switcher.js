(function () {
  if (!isMobile.any) {
    //console.log('This - Desktop');
    var langSwitcher = document.querySelector('.lang-switcher');
    if (langSwitcher) {
      var langsArr = langSwitcher.querySelectorAll('.lang-switcher__item');
      var currentLang = langSwitcher.querySelector('.lang-switcher__item.active');
    }

    var langSwitchOpener = function (e) {
      e.preventDefault();
      for (var i = 0; i < langsArr.length; i++) {
        $(langsArr[i]).show(300);
      }
    };

    if (currentLang) {
      currentLang.addEventListener('click', langSwitchOpener);
    }
  }
})();

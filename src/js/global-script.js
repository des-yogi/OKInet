document.documentElement.className = document.documentElement.className.replace('no-js', 'js');
function cth(c) {document.documentElement.classList.add(c)}
'ontouchstart' in window?cth('touch'):cth('no-touch');
if(typeof InstallTrigger!=='undefined')cth('firefox');
if(/constructor/i.test(window.HTMLElement)||(function(p){return p.toString()==="[object SafariRemoteNotification]"})(!window['safari']||(typeof safari!=='undefined'&&safari.pushNotification)))cth('safari');
if(/*@cc_on!@*/false||!!document.documentMode)cth('ie');
if(!(/*@cc_on!@*/false||!!document.documentMode)&&!!window.StyleMedia)cth('edge');
if(!!window.chrome&&(!!window.chrome.webstore||!!window.chrome.runtime))cth('chrome');
if(~navigator.appVersion.indexOf("Win"))cth('windows');
if(~navigator.appVersion.indexOf("Mac"))cth('osx');
if(~navigator.appVersion.indexOf("Linux"))cth('linux');

// Если на проекте jQuery
// $( document ).ready(function() {
//   // code
// });

// Изоляция без jQuery
// (function(){
//   // code
// }());

(function(){
  var bLazy = new Blazy({
    selector: '.b-lazy'
  });
  // var serviceBlock = new Blazy({
  //   container: '.service-block__img-wrapper'
  // });
  // var newsBlock = new Blazy({
  //   container: '.news-block__img-wrapper'
  // });
}());

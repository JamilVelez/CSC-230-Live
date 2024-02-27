// Automatically detect user's preferred language and translate the webpage
function autoTranslatePage() {
    let lang = window.navigator.languages ? window.navigator.languages[0] : null;
    lang = lang || window.navigator.language || window.navigator.browserLanguage || window.navigator.userLanguage;
  
    let shortLang = lang;
    if (shortLang.indexOf('-') !== -1)
        shortLang = shortLang.split('-')[0];
  
    if (shortLang.indexOf('_') !== -1)
        shortLang = shortLang.split('_')[0];
  
    // Trigger Google Translate
    let googleTranslateScript = document.createElement('script');
    googleTranslateScript.src = '//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit';
    document.head.appendChild(googleTranslateScript);
  
    // Google Translate Widget Initialization
    window.googleTranslateElementInit = function() {
      new google.translate.TranslateElement({
        pageLanguage: shortLang,
        includedLanguages: '',
        layout: google.translate.TranslateElement.InlineLayout.SIMPLE
      }, 'google_translate_element');
    };
  }
  
  // Call the autoTranslatePage function when the page is loaded
  document.addEventListener('DOMContentLoaded', autoTranslatePage);
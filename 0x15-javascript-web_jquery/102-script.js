$(document).ready(() => {
  $('input#btn_translate').click(() => {
    const url = 'https://fourtonfish.com/hellosalut/?lang=' + $('input#language_code').val();
    $.get(url, (data, status) => {
      $('div#hello').text(data.hello);
    });
  });
});
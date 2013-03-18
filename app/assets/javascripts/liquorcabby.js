$(document).ready(document_ready);

function document_ready()
{
  hide_user_links();
  $('#faves').on('click', '.color', change_faves_font);
}

// function change_faves_font()
// {
//   $('#faves').css.style();
// }

function hide_login_register_links()
{
  $('#form').empty();
  $('#homelinks').hide();

}

function hide_user_links()
{
  $('#userlinks').hide();
}

function cancel_login_form()
{
  $('#form').empty();
}

function cancel_user_form()
{
  $('#form').empty();
}

function show_user_links()
{
  $('#userlinks').show();
}
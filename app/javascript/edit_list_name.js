// app/javascript/edit_list_name.js
document.addEventListener('DOMContentLoaded', function () {
  const enableEditBtn = document.getElementById('enable-edit-btn');
  const confirmEditBtn = document.getElementById('confirm-edit-btn');
  const cancelEditBtn = document.getElementById('cancel-edit-btn');
  const listNameField = document.getElementById('list-name-field');

  enableEditBtn.addEventListener('click', function () {
    // Habilitar o campo de texto
    listNameField.disabled = false;

    // Exibir os botões de confirmar e cancelar
    confirmEditBtn.style.display = 'inline-block';
    cancelEditBtn.style.display = 'inline-block';

    // Ocultar o botão de editar
    enableEditBtn.style.display = 'none';
  });

  cancelEditBtn.addEventListener('click', function () {
    // Desabilitar o campo de texto
    listNameField.disabled = true;

    // Ocultar os botões de confirmar e cancelar
    confirmEditBtn.style.display = 'none';
    cancelEditBtn.style.display = 'none';

    // Exibir o botão de editar
    enableEditBtn.style.display = 'inline-block';
  });
});

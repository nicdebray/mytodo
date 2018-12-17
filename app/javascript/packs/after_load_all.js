// toggle avatar menu
function avatarMenuOpen() {
  const avatarmenu = document.querySelector(".user-menu");
  avatarmenu.classList.toggle("hidden");
}

function showAvatarMenuClick() {
  const avataricon = document.querySelector(".navbar-todo-avatar");
  avataricon.addEventListener("click", avatarMenuOpen);
}

showAvatarMenuClick();
// End toggle avatar menu

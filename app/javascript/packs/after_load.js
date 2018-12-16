// toggle create new todo
function hideForm(){
  const createnewtodofield = document.querySelector("#new_todo");
  createnewtodofield.classList.add("hidden");
}

hideForm();

function createNewTodoField() {
  const createnewtodofield = document.querySelector("#new_todo");
  createnewtodofield.classList.toggle("hidden");
}

function createNewTodoDropdown() {
  const createnewtododropdown = document.querySelector(".all-todos-create-title h3 img");
  createnewtododropdown.classList.toggle("menu-dropdown-new-todo-up");
}



function createNewTodoClick(){
  const createnewtodo = document.querySelector(".all-todos-create-title h3");
  createnewtodo.addEventListener("click", createNewTodoField);
  createnewtodo.addEventListener("click", createNewTodoDropdown);
}

createNewTodoClick();



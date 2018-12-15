// conver kelvin in degree
function kelvInDegr(kelv) {
  return (kelv - 273.15);
}

// weather function
function meteo () {
  const weather = document.querySelector(".weather");
  fetch("https://api.openweathermap.org/data/2.5/weather?q=brussels&APPID=29821a91fb06d6f74fe939742f4ec5f7")
  .then(response => response.json())
  .then((data) => {
    let celcius = kelvInDegr(data.main.temp);
    const city = data.name;
    const temp = `<div id="weather-block">${Math.round(celcius)}°c</div>`;
    weather.insertAdjacentHTML("beforeend", city);
    weather.insertAdjacentHTML("beforeend", temp);
  })
}

meteo();

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



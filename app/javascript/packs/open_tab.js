const openTab = () => {

const buttonleft = document.getElementById("btn-left");
const buttonright = document.getElementById("btn-right");

const content_left = document.getElementById("content-left");
const content_right = document.getElementById("content-right");


buttonleft.addEventListener("click", (event) => {

  content_left.style.display = "block";
  content_right.style.display = "none";

  buttonleft.className += " active";
  buttonright.classList.remove("active");
});

buttonright.addEventListener("click", (event) => {

  content_left.style.display = "none";
  content_right.style.display = "block";

  buttonright.className += " active";
  buttonleft.classList.remove("active");
});
};


export { openTab };

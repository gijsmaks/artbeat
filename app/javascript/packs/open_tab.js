const openTab = () => {

const buttonleft = document.getElementById("btn-left");
const buttonright = document.getElementById("btn-right");

const description = document.getElementById("description");
const comment = document.getElementById("comment");


buttonleft.addEventListener("click", (event) => {

  description.style.display = "block";
  comment.style.display = "none";

  buttonleft.className += " active";
  buttonright.classList.remove("active");
});

buttonright.addEventListener("click", (event) => {

  description.style.display = "none";
  comment.style.display = "block";

  buttonright.className += " active";
  buttonleft.classList.remove("active");
});
};


export { openTab };

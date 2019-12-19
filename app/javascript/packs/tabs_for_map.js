const openTabForMap = () => {

  const buttonleft = document.getElementById("btn-left-map");
  const buttonright = document.getElementById("btn-right-map");

  const content_left = document.getElementById("content-left-artwork");
  const content_right = document.getElementById("content-right-map");

  if(buttonleft && buttonright) {

    buttonleft.addEventListener("click", (event) => {

      content_left.style.display = "block";
      content_right.style.visibility = "hidden";

      buttonleft.className += " active";
      buttonright.classList.remove("active");
    });

    buttonright.addEventListener("click", (event) => {

      content_left.style.display = "none";
      content_right.style.visibility = "visible";

      buttonright.className += " active";
      buttonleft.classList.remove("active");
    });
  }
};
export { openTabForMap };



const loading = (event) => {

  const loadingContent = document.querySelector(".loader-content");
  const loadingGrid = document.querySelector(".loading");
  const findButton = document.querySelector(".btn-find");

  if (findButton) {
    findButton.addEventListener("click", (event) => {
      // console.log('yo ben')
      // event.preventDefault()
      loadingContent.style.visibility = "hidden";
      loadingGrid.style.display = "block";
    });
  }
}

export { loading };

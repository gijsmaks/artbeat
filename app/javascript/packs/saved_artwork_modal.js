const generateSaveModal = (event) => {
  const bookmark = document.querySelector(".fa-bookmark");
  const modal = document.querySelector(".all-screen");

  bookmark.addEventListener("click", (event) => {
    modal.style.display = "block";
    destroySaveModal()
  });
};

const destroySaveModal = (event) => {
  const modal = document.querySelector(".all-screen");

  window.addEventListener("click", (event) => {
    console.log(event.target)
    if (event.target == modal) {
      modal.style.display = "none";
    };
  });
};

export { generateSaveModal };
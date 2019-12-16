const generateSaveModal = (event) => {
  const bookmark = document.querySelector(".fa-heart");
  const modal = document.querySelector(".all-screen");

  if (bookmark) {
    bookmark.addEventListener("click", (event) => {
      modal.style.display = "block";
      destroySaveModal()
    });
  }
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

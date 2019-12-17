const detectScroll = (event) => {
  var prevScrollpos = pageYOffset;
  document.addEventListener("scroll", (event) => {
    onScroll(prevScrollpos);
    prevScrollpos = window.pageYOffset;
  });
}

const onScroll = (prevScrollpos) => {
  const currentScrollPos = pageYOffset;
  if (prevScrollpos >= currentScrollPos) {
    document.getElementById("index-search").classList.remove("scrolling-down");
  } else {
    document.getElementById("index-search").classList.add("scrolling-down");
  }
}

export { detectScroll };

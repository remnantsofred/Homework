document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants
  
  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };
  
  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });
  
  
  // adding SF places as list items
  
  // --- your code here!
  const addPlace = (e) => {}
    const newPlaces = [

    ]
    newPlaces.forEach ((place) => {
      const placeli = document.createElement("li");
      li.append(place);
      
    });
    ul.appendChild(li);
  };
  
  document.querySelector(".favorite-submit").forEach((submit) => {
    submit.addEventListener("submit", addPlace);
  });
  // adding new photos

  // --- your code here!



});

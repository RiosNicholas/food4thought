// Query for button with an id "theme-button"
let themeButton = document.getElementById("theme-button");

const toggleDarkMode = () => {
    // const sections = document.querySelectorAll("section");
    // sections.forEach(section => section.classList.toggle("dark-mode"));
    document.body.classList.toggle("dark-mode");
}


// Registers a 'click' event listener for the theme button with toggleDarkMode as the callback function.
themeButton.addEventListener("click", toggleDarkMode);
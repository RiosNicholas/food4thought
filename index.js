/* DARK MODE */
// Query for button with an id "theme-button"
let themeButton = document.getElementById("theme-button");
let navContainer = document.querySelector("nav");
let footerContainer = document.querySelector("footer");

const toggleDarkMode = () => {
    // const sections = document.querySelectorAll("section");
    // sections.forEach(section => section.classList.toggle("dark-mode"));
    document.body.classList.toggle("dark-mode");
    document.querySelector("nav").classList.toggle("dark-mode-nav-footer");
    document.querySelector("footer").classList.toggle("dark-mode-nav-footer");
    
    
    if (document.body.classList.contains("dark-mode")) {
        themeButton.innerHTML = "Toggle Light Mode";
    } else {
        themeButton.innerHTML = "Toggle Dark Mode";
    }
}
// Registers a 'click' event listener for the theme button with toggleDarkMode as the callback function.
themeButton.addEventListener("click", toggleDarkMode);


/* PETITION */
const addSignature = () => {

}

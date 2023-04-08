/* DARK MODE */
// Query for button the id "theme-button"
let themeButton = document.getElementById("theme-button");
let navContainer = document.querySelector("nav");
let footerContainer = document.querySelector("footer");

const toggleDarkMode = () => {
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
// themeButton.addEventListener("click", toggleDarkMode);



/* PETITION */
const addSignature = () => {
    let name = document.getElementById('form-name').value;
    let location = document.getElementById('form-location').value;
    let signNowButton = querySelector("#sign-now-button")
    
    const signature = document.createElement("p");
    const signatureText = `🖊️ ${name} from ${location} is getting involved.`;
    signature.textContent = signatureText;

    const signaturesSection = document.querySelector(".signatures");
    signaturesSection.appendChild(signature);

    event.preventDefault();
}
// signNowButton.addEventListener('submit', addSignature);
// the function above doesn't work as intended



/* FORM VALIDATION*/
const validateForm = () => {
  let containsErrors = false;
  var petitionInputs = document.getElementById("sign-petition").elements;
  
  // Loop through all inputs and validate the value of each input
  for (let i = 0; i < petitionInputs.length; i++) {
    if (petitionInputs[i].value.length < 2) {
      petitionInputs[i].classList.add('error');
      containsErrors = true;
    } else {
      petitionInputs[i].classList.remove('error');
    }
  }


  // TODO: Call addSignature() and clear fields if no errors
  if (containsErrors == false) {
    addSignature();
    for (let i = 0; i < petitionInputs.length; i++) {
      petitionInputs[i].value = "";
      containsErrors = false;
    }
  }
  event.preventDefault();
}
signNowButton.addEventListener('click', validateForm);

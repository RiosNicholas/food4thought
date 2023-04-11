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
themeButton.addEventListener("click", toggleDarkMode);


/* PETITION */
const form = document.querySelector('#sign-petition');
const signatureList = document.querySelector('#signature-list');
const signNowButton = document.querySelector("#sign-now-button");

const addSignature = (event) => {
  event.preventDefault();
  let name = document.getElementById('form-name').value;
  let location = document.getElementById('form-location').value;
  
  const signatureText = `🖊️ ${name} from ${location} is getting involved.`;
  const signature = document.createElement("p");
  signature.innerText = signatureText;
  signatureList.appendChild(signature);
}

/* FORM VALIDATION */
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
  // Calls addSignature() and clears fields if no errors are found
  if (containsErrors == false) {
    addSignature(event);
    for (let i = 0; i < petitionInputs.length; i++) {
      petitionInputs[i].value = "";
      containsErrors = false;
    }
    return false; // prevent default form submission behavior
  }
}

signNowButton.addEventListener('click', validateForm);

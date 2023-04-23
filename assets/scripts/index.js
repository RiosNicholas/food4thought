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
// const form = document.querySelector('#sign-petition');
const signatureList = document.querySelector('#signatures');
const signNowButton = document.querySelector("#sign-now-button");

const addSignature = (event, person) => {
  event.preventDefault();
  
  const signatureText = `🖊️ ${person.name} from ${person.location} is getting involved.`;
  const signature = document.createElement("p");
  signature.innerText = signatureText;
  signatureList.appendChild(signature);
}

/* FORM VALIDATION */
const validateForm = (event) => {
  let person = {
    name: petitionInputs[0].value // accesses and saves value of first input
  }
  
  event.preventDefault();
  let containsErrors = false;
  let petitionInputs = document.querySelectorAll('#sign-petition input:not([type="submit"])');
  
  // Loop through all inputs and validate the value of each input
  for (let i = 0; i < petitionInputs.length; i++) {
    if (petitionInputs[i].value.length < 2 || petitionInputs.value == 0) {
      petitionInputs[i].classList.add('error');
      containsErrors = true;
    } else {
      petitionInputs[i].classList.remove('error');
    }
  }
  
  const email = document.getElementById('form-email');
  if (!email.value.includes('@')) {
    email.classList.add('error');
    containsErrors = true; 
  } else {
    email.classList.remove('error');
  }

  // Calls addSignature() and clears fields if no errors are found
  if (!containsErrors) {
    addSignature(event, person);
    for (let i = 0; i < petitionInputs.length; i++) {
      petitionInputs[i].value = "";
      containsErrors = false;
    }
  }
}
signNowButton.addEventListener('click', validateForm);


/* ANIMATIONS */
let animation = {
  revealDistance: 75,
  initialOpacity: 0,
  transitionDelay: 0,
  transitionDuration: '1s',
  transitionProperty: 'all', 
  transitionTimingFunction: 'ease'
};

const revealableContainers = document.querySelectorAll('.revealable');

const reveal = () => {
  for (let i = 0; i < revealableContainers.length; i++) {
    // Get the distance from top of the current revealable container to top of the viewport
    let topOfRevealableContainer = revealableContainers[i].getBoundingClientRect().top;
    
    // If top of revealable container less than animation revealable distance (75), div becomes active
    if (topOfRevealableContainer < window.innerHeight - animation.revealDistance) {
      revealableContainers[i].classList.add('active');
    } else {
      revealableContainers[i].classList.remove('active');
    }
  }
};
window.addEventListener('scroll', reveal);


/* Reduce motion button */
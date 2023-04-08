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
const addSignature = () => {
    let name = document.getElementById('form-name').value;
    let location = document.getElementById('form-location').value;
    let signNowButton = querySelector("#sign-now-button")
    
    const signature = document.createElement("p");
    const signatureText = "🖊️" + name + " from " + location + " is getting involved.";
    signature.textContent = signatureText;

    const signaturesSection = document.querySelector(".signatures");
    signaturesSection.appendChild(signature);

    event.preventDefault();
}
signNowButton.addEventListener('submit', addSignature);

// Use the DOM method `.getElementById()` to find your form
const form = document.getElementById("myForm")
// 

const validateForm = (event) => {
  // This will get
  let elements = document.getElementById("sign-petition").elements;
  
  for (let i = 0; i < elements.length; i++) {
    // Check if the input is empty
    if (elements[i].value == "") {
      console.log("This input is empty!");
       alert("You did not enter a value for" + elements[i].id  + ". Please try again.");
    } else {
      console.log("This input has some data");
      // Print out each element in the elements array
      console.log(elements[i].value);
    }
  }
  // Prevents redirect
  event.preventDefault();
}

// Add the an event listener to validate your form
form.addEventListener('submit', validateForm);


// the function above doesn't work as intended




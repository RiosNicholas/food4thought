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




"use strict";
/*
const string = "The revolution";
console.log(string);
//
/*
const badString1 = This is a test;
const badString2 = "This is a test;
const badString3 = This is a test"
*/
/*
const badSting = string;
console.log(string);
//
//console.log(`I`ve got no right to take my place...``);
console.log("I've got no right to take my place...");
//
const name = "Chris";
const greeting = `Hello, ${name}`;
console.log(greeting); // "Hello, Chris"
//
const one = "Hello, ";
const two = "how are you?";
const joined = `${one}${two}`;
console.log(joined); // "Hello, how are you?"
//
const button = document.querySelector("button");

function greet() {
  const name = prompt("What is your name?");
  alert(`Hello ${name}, nice to see you!`);
}

button.addEventListener("click", greet);
//
let txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
let length = txt.length;
console.log(length); //26
//
let str = "Apple, Banana, Kiwi";
let part = str.slice(7, 13);
console.log(part); // Banana
//
str = "Apple, Banana, Kiwi";
part = str.slice(-12, -6);
console.log(part); // Banana
//
part = str.slice(-12);
console.log(part); //Banana, Kiwi'
// 
/*
Replacing String Content
The replace() method replaces a specified value with another value in a string:
*/
/*
Example
let text = "Please visit Microsoft!";
let newText = text.replace("Microsoft", "W3Schools");¨
log
*/
/*
const select = document.querySelector('select');
const para = document.querySelector('p');

select.addEventListener('change', setWeather);

function setWeather() {
  const choice = select.value;

  if (choice === 'sunny') {
    para.textContent = 'It is nice and sunny outside today. Wear shorts! Go to the beach, or the park, and get an ice cream.';
  } else if (choice === 'rainy') {
    para.textContent = 'Rain is falling outside; take a rain coat and an umbrella, and don\'t stay out for too long.';
  } else if (choice === 'snowing') {
    para.textContent = 'The snow is coming down — it is freezing! Best to stay in with a cup of hot chocolate, or go build a snowman.';
  } else if (choice === 'overcast') {
    para.textContent = 'It isn\'t raining, but the sky is grey and gloomy; it could turn any minute, so take a rain coat just in case.';
  } else {
    para.textContent = '';
  }
}
*/
/*
const select = document.querySelector('select');
const para = document.querySelector('p');

select.addEventListener('change', setWeather);

function setWeather() {
  const choice = select.value;

  switch (choice) {
    case 'sunny':
      para.textContent = 'It is nice and sunny outside today. Wear shorts! Go to the beach, or the park, and get an ice cream.';
      break;
    case 'rainy':
      para.textContent = 'Rain is falling outside; take a rain coat and an umbrella, and don\'t stay out for too long.';
      break;
    case 'snowing':
      para.textContent = 'The snow is coming down — it is freezing! Best to stay in with a cup of hot chocolate, or go build a snowman.';
      break;
    case 'overcast':
      para.textContent = 'It isn\'t raining, but the sky is grey and gloomy; it could turn any minute, so take a rain coat just in case.';
      break;
    default:
      para.textContent = '';
  }
}
*/
/*
const select = document.querySelector('select');
const html = document.querySelector('html');
document.body.style.padding = '10px';

function update(bgColor, textColor) {
  html.style.backgroundColor = bgColor;
  html.style.color = textColor;
}

select.addEventListener('change', () => ( select.value === 'black' ) ? update('black','white') : update('white','black'));
*/

let add7 = function (inputNumber) {
  return inputNumber + 7;
};
console.log(add7(2));

let multiply = function (a, b) {
  return a * b;
};
console.log(multiply(2, 2));

// Returns first letter inn string as capitalized
let capitalize = function (inputString) {
  let firstLetter = inputString.substring(1, -9999);
  let firstLetterCapitalized = firstLetter.toUpperCase();
  let remainingString = inputString.slice(1);
  let lowerCaseRemaining = remainingString.toLowerCase();
  return `${firstLetterCapitalized}${lowerCaseRemaining}`;
};

console.log(capitalize(`oNly FirSt LetteR is CapAiTalized`)); // Only first letter i capitalized

//

// Return last letter of a string
let lastLetter = function (inputString) {
  let stringLength = inputString.length;
  let lastLetter = inputString.slice(stringLength - 1);
  return lastLetter;
};

console.log(lastLetter(`Returns the last letter of a string`)); // g

// Loop
const cats = ["Leopard", "Serval", "Jaguar", "Tiger", "Caracal", "Lion"];

for (const cat of cats) {
  console.log(cat);
}

const repeatString = function (str, num) {
  let string = str;
  for (let index = 1; index < num; index++) {
    string = string + str;
  }
  return string;
};
console.log(repeatString("hey", 3));

const reverseString = function (str) {
  let strArray = [];
  for (let i = 0; i < str.length; i++) {
    strArray.push(str[i]);
  }
  strArray.reverse();
  let stringReverse = strArray.join("");

  return stringReverse;
};
console.log(reverseString("hello"));

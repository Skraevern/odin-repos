"use strict";

// Adds text
const container = document.querySelector(`#container`);

const content = document.createElement(`div`);
content.classList.add(`content`);
content.textContent = `Hey I'm red!`;

container.appendChild(content);

// creates h3
let h3 = document.createElement(`h3`);
h3.classList.add(`h3`);
h3.textContent = `I'm a blue h3!`;

container.appendChild(h3);

// creates a new div
let newDiv = document.createElement(`div`);
newDiv.classList.add(`new-div`);

container.appendChild(newDiv);

// new h1 inside new div
let h1 = document.createElement(`h1`);
h1.classList.add(`h1`);
h1.textContent = `I'm in a div!`;

newDiv.appendChild(h1);

// p inside newDiv
let newP = document.createElement(`p`);
newP.textContent = `ME TOO!`;

newDiv.appendChild(newP);

// Second button
const btn = document.querySelector(`#btn`);
btn.onclick = () => alert(`Hello World`);

const btn2 = document.querySelector(`#btn2`);
btn2.addEventListener(`click`, () => {
  alert(`Hello World`);
});

btn.addEventListener(`click`, function (e) {
  console.log(e.target);
});

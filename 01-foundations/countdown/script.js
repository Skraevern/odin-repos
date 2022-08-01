const output = document.querySelector(".output");
output.innerHTML = "";

for (let i = 10; i > -1; i--) {
  const para = document.createElement("p");
  para.textContent = i;

  if (i === 0) {
    para.textContent = "Blast off!";
  }
  output.appendChild(para);
}

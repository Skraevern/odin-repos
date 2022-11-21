// Objects as a Design Pattern
// One of the simplest ways you can begin to organize your code is by simply grouping things into objects. Take these examples from a ‘tic tac toe’ game:

// example one
const playerOneName = "Tim";
const playerTwoName = "Jenn";
const playerOneMarker = "X";
const playerTwoMarker = "O";

// example two
const playerOne = {
    name: "Tim",
    marker: "X",
};

const playerTwo = {
    name: "Jenn",
    marker: "O",
};

// At first glance, the first doesn’t seem so bad.. and it actually takes fewer lines to write than the example using objects, but the benefits of the second approach are huge! Let me demonstrate:
function printName(player) {
    console.log(player.name);
}

// This is something that you just could NOT do with the example one setup. Instead, every time you wanted to print a specific player’s name, you would have to remember the correct variable name and then manually console.log it:
console.log(playerOneName);
console.log(playerTwoName);

// Again, this isn’t that bad… but what if you don’t know which player’s name you want to print?
function gameOver(winningPlayer) {
    console.log("Congratulations!");
    console.log(winningPlayer.name + " is the winner!");
}

// Or, what if we aren’t making a 2 player game, but something more complicated such as an online shopping site with a large inventory? In that case, using objects to keep track of an item’s name, price, description and other things is the only way to go. Unfortunately, in that type of situation, manually typing out the contents of our objects is not feasible either. We need a cleaner way to create our objects, which brings us to…

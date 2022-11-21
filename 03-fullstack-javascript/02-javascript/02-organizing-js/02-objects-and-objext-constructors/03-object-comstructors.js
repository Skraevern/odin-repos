// Object Constructors
// When you have a specific type of object that you need to duplicate like our player or inventory items, a better way to create them is using an object constructor, which is a function that looks like this:

function Player(name, marker) {
    this.name = name;
    this.marker = marker;
}

// and which you use by calling the function with the keyword new.

const player = new Player("steve", "X");
console.log(player.name); // "steve";

// Just like with objects created using the Object Literal methid, you can add functions to the object:

function Player(name, marker) {
    this.name = name;
    this.marker = marker;
    this.sayName = function () {
        console.log(name);
    };
}

const player1 = new Player("Steve", "X");
const player2 = new Player("Jenn", "O");
player1, sayName(); // "Steve"
player2.sayName(); // "Jenn"

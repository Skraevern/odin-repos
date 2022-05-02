`use strict`;

/*
https://javascript.info/object

Hello, object
importance: 5
Write the code, one line for each action:

Create an empty object user.
Add the property name with the value John.
Add the property surname with the value Smith.
Change the value of the name to Pete.
Remove the property name from the object.
*/

let user = {};
user.name = `John`;
user.surname = `Smith`;
console.log(user);
user.name = `Pete`;
console.log(user);
delete user.name;
console.log(user);

/*
Check for emptiness
importance: 5
Write the function isEmpty(obj) which returns true if the object has no properties, false otherwise.

Should work like that:

let schedule = {};

alert( isEmpty(schedule) ); // true

schedule["8:30"] = "get up";

alert( isEmpty(schedule) ); // false
*/
isEmpty = (obj) => {
  for (let key in obj) {
    return false;
  }
  return true;
};

let schedule = {};
console.log(isEmpty(schedule)); // true
schedule[`8:30`] = `get up`;
console.log(schedule); // 8:30 'get up'
console.log(isEmpty(schedule)); // false

/*
Sum object properties
importance: 5
We have an object storing salaries of our team:

let salaries = {
  John: 100,
  Ann: 160,
  Pete: 130
}
Write the code to sum all salaries and store in the variable sum. Should be 390 in the example above.

If salaries is empty, then the result must be 0.
*/
let salaries = {
  John: 100,
  Ann: 160,
  Pete: 130,
};
let sumSalaries = (object) => {
  let sum = 0;
  for (const key in object) {
    sum += salaries[key];
  }
  return sum;
};
console.log(salaries);
console.log(sumSalaries(salaries)); // 390

/*
Multiply numeric property values by 2
importance: 3
Create a function multiplyNumeric(obj) that multiplies all numeric property values of obj by 2.

For instance:

// before the call
let menu = {
  width: 200,
  height: 300,
  title: "My menu"
};

multiplyNumeric(menu);

// after the call
menu = {
  width: 400,
  height: 600,
  title: "My menu"
};
Please note that multiplyNumeric does not need to return anything. It should modify the object in-place.

P.S. Use typeof to check for a number here.
*/
let menu = {
  width: 200,
  height: 300,
  title: "My menu",
};
console.log(menu);
multiplyNumeric = (object) => {
  for (const key in object) {
    if (typeof object[key] === `number`) {
      object[key] = object[key] * 2;
    }
  }
};
multiplyNumeric(menu);
console.log(menu);

// MDN
let person = {};
console.log(person); // {}
person = {
  name: [`Bob`, `Smith`],
  age: 32,
  bio() {
    console.log(`${this.name[0]} ${this.name[1]} is ${this.age} years old`);
  },
  introduceSelf() {
    console.log(`Hi I'm ${this.name[0]}`);
  },
};
console.log(person.name); // [`Bob`, `Smith`]
console.log(person.name[0]); // Bob
console.log(person.age); // 32
person.bio(); // Bob Smith is 32 years old
person.introduceSelf(); // Hi I'm Bobo'

//

person = {
  name: {
    first: `Bob`,
    last: `Smith`,
  },
  age: 32,
  bio() {
    console.log(`${this.name[0]} ${this.name[1]} is ${this.age} years old`);
  },
  introduceSelf() {
    console.log(`Hi I'm ${this.name[0]}`);
  },
};
console.log(person.name); // {first: `Bob`, last: `Smith`}
console.log(person.name[0]); // undefined
console.log(person.name.first); // Bob
console.log(person.name.last); //Smith;
console.log(person[`name`][`first`]); //Bob
console.log(person.age); // 32
console.log(person[`age`]); //32;
person.bio(); // Bob Smith is 32 years old
person.introduceSelf(); // Hi I'm Bobo'

person.age = 45;
person[`name`][`last`] = `Cratchit`;
console.log(person.age); // 45
console.log(person[`name`][`last`]); // Cratchit

person.eyes = `hazel`;
person[`color`] = `white`;
person.farewell = function () {
  console.log(`Bye everybody`);
};
console.log(person.eyes); // hazel
console.log(person.color); // white
person.farewell(); // Bye everybody@

const myDataName = `height`;
const myDataValue = `1.75`;
person.myDataName = myDataValue;
console.log(person.myDataName); // 1.75
person[myDataName] = myDataValue;
console.log(person.height); // 1.75

/*
Introducing constructors 
Using object literals is fine when you only need to create one object, but if you have to create more than one, as in the previous section, they're seriously inadequate. We have to write out the same code for every object we create, and if we want to change some properties of the object - like adding a height property - then we have to remember to update every object.
*/

createPerson = (name) => {
  const obj = {};
  obj.name = name;
  obj.introduceSelf = function () {
    console.log(`Hi! I'm ${this.name}.`);
  };
  return obj;
};
mons = createPerson(`Mons`);
belle = createPerson(`Belle`);
mons.introduceSelf(); // Hi! I'm Mons.
belle.introduceSelf(); // Hi! I'm Belle.

/*
This works fine but is a bit long-winded: we have to create an empty object, initialize it, and return it. A better way is to use a constructor. A constructor is just a function called using the new keyword. When you call a constructor, it will:  
create a new object 
bind this to the new object, so you can refer to this in your constructor code 
run the code in the constructor 
return the new object. 
Constructors, by convention, start with a capital letter and are named for the type of object they create. So we could rewrite our example like this:  
*/
function Person(name) {
  this.name = name;
  this.introduceSelf = function () {
    console.log(`Hi! I'm ${this.name}.`);
  };
}
//To call Person() as a constructor, we use new:
const salva = new Person("Salva");
salva.name;
salva.introduceSelf(); // Hi! I'm Salvo
const frankie = new Person("Frankie");
frankie.name;
frankie.introduceSelf(); // Hi! I'm Franke

// Objects Basics 1 test
/*
In this task you are provided with an object literal, and your tasks are to Store the value of the name property inside the catName variable, using bracket notation. 
Run the greeting() method using dot notation (it will log the greeting to the browser's console). Update the color property value to black.
*/

const cat = {
  name: "Bertie",
  breed: "Cymric",
  color: "white",
  greeting: function () {
    console.log("Meow!");
  },
};

catName = cat[`name`];
console.log(catName); // Bertie
cat.greeting(); // Meow!
cat[`color`] = `Black`;
console.log(cat.color); // Black

/*
In our next task, we want you to have a go at creating your own object literal to represent one of your favorite bands. The required properties are: name: A string representing the band name. nationality: A string representing the country the band comes from. genre: What type of music the band plays. members: A number representing the number of members the band has. formed: A number representing the year the band formed. split: A number representing the year the band split up, or false if they are still together. albums: An array representing the albums released by the band. Each array item should be an object containing the following members: name: A string representing the name of the album. released: A number representing the year the album was released. Include at least two albums in the albums array. Once you've done this, you should then write a string to the variable bandInfo, which will contain a small biography detailing their name, nationality, years active, and style, and the title and release date of their first album. Try updating the live code below to recreate the finished example:
*/
let section = document.getElementById(`section`);
let band = {
  name: `Marilyn Manson`,
  nationality: `Usa`,
  genre: `Shock Rock`,
  members: 4,
  formed: 1994,
  split: false,
  album: [
    {
      name: `Portrait of an American Family`,
      released: 1994,
    },
    {
      name: `Anticrist Superstar`,
      released: 1998,
    },
  ],
};

let bandInfo = `${band.name} is a ${band.genre} from ${band.nationality}. It has ${band.members} members and was formed in ${band.formed}. They have released ${band.album.length} albums. ${band.album[0].name} in ${band.album[0].released} and ${band.album[1].name} in ${band.album[1].released}.`;

let para1 = document.createElement("p");
para1.textContent = bandInfo;
section.appendChild(para1);

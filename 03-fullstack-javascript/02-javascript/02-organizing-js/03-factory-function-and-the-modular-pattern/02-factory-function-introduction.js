// Factory function introduction

// The factory function pattern is similar to constructors, but instead of using new to create an object, factory functions simply set up and return the new object when you call the function. Check out this example:

const personFactory = (name, age) => {
    const sayHello = () => console.log('hello!');
    return { name, age, sayHello };
  };
  
  const jeff = personFactory('jeff', 27);
  
  console.log(jeff.name); // 'jeff'
  
  jeff.sayHello(); // calls the function and logs 'hello!'

  //For reference, here is the same thing created using the constructor pattern:

  const Person = function(name, age) {
    this.sayHello = () => console.log('hello!');
    this.name = name;
    this.age = age;
  };
  
  const jeff2 = new Person('jeff', 27);

//   Object Shorthand
// A quick note about line 3 from the factory function example. In 2015, a handy new shorthand for creating objects was added into JavaScript. Without the shorthand, line 3 would have looked something like this:

return {name: name, age: age, sayHello: sayHello};

// Put simply, if you are creating an object where you are referring to a variable that has the exact same name as the object property you’re creating, you can condense it like so:

return {name, age, sayHello};

// With that knowledge in your pocket, check out this little hack:

const name = "Maynard";
const color = "red";
const number = 34;
const food = "rice";

// logging all of these variables might be a useful thing to do,
// but doing it like this can be somewhat confusing.
console.log(name, color, number, food); // Maynard red 34 rice

// if you simply turn them into an object with brackets,
// the output is much easier to decipher:
console.log({name, color, number, food});
 // { name: 'Maynard', color: 'red', number: 34, food: 'rice' }
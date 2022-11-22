// The Prototype
// Before we go much further, there’s something important you need to understand about JavaScript objects. All objects in JavaScript have a prototype. Stated simply, the prototype is another object that the original object inherits from, which is to say, the original object has access to all of its prototype’s methods and properties.

//The concept of the prototype is an important one, so you’ve got some reading to do, which you’ll find in the Assignment section below. Make sure you really get it before moving on!

// If you’ve understood the concept of the prototype, this next bit about constructors will not be confusing at all!

function Student(name, grade) {
    this.name = name
    this.grade = grade
  }
  
  Student.prototype.sayName = function() {
    console.log(this.name);
    // return this.name // Tim
  }
  Student.prototype.goToProm = function() {
    console.log("Eh.. go to prom?")
    // return "Eh.. go to prom?"
  }
  
const student1 = new Student("Tim", 2)

console.log(student1) // {name: 'Tim', grade: 2}
console.log(student1.sayName()); // Undefined
console.log(student1.goToProm()) // Undefined

// If you’re using constructors to make your objects it is best to define functions on the prototype of that object. Doing so means that a single instance of each function will be shared between all of the Student objects. If we declare the function directly in the constructor, like we did when they were first introduced, that function would be duplicated every time a new Student is created. In this example, that wouldn’t really matter much, but in a project that is creating thousands of objects, it really can make a difference.
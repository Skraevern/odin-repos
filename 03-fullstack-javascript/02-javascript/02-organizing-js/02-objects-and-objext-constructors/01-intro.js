// // Introduction

// In our JavaScript fundamentals course, you should have learned the basics of using objects to store and retrieve data. Let’s start with a little refresher.

// There are multiple ways to define objects but in most cases, it is best to use the object literal syntax as follows:

const myObject = {
    property: "Value!",
    otherProperty: 77,
    "obnoxious property": function () {
        // do stuff!
    },
};

// There ar also 2 ways to get information out of an object: dot notation and bracket notation.
// dot notation
myObject.property; // `Value`
// bracket notation
myObject["obnoxious property"]; // |Function]

//Which method you use will depend on context. Dot notation is cleaner and is usually preferred, but there are plenty of circumstances when it is not possible to use it. For example, myObject."obnoxious property" won’t work because that property is a string with a space in it. Likewise, you cannot use variables in dot notation:

const variable = `property`;

myObject.variable; // This gives us undefined becous its looking for property named variable in our object,
myObject[variable]; // This is equivalent of myObject[`property`] and returns `Value!`

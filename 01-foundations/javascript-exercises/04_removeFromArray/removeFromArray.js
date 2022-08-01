const removeFromArray = function (arr, ...theArgs) {
  let newArray = [];
  let removeNumber = [];
  let element;

  for (let index = 0; index < arr.length; index++) {
    newArray.push(arr[index]);
    for (let i = 0; i < theArgs.length; i++) {
      element = theArgs[i];
      if (arr[index] === element) {
        newArray.pop(arr[index]);
      }
    }
  }
  return newArray;
};

// Do not edit below this line
module.exports = removeFromArray;

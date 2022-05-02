const reverseString = function (str) {
  let strArray = [];
  for (let i = 0; i < str.length; i++) {
    strArray.push(str[i]);
  }
  strArray.reverse();
  let stringReverse = strArray.join("");

  return stringReverse;
};

// Do not edit below this line
module.exports = reverseString;
